let limit = ref 1000
let gflag = ref 0
let aaflag = ref 0          

let rec iter n e = (* ��Ŭ�������򤯤꤫���� (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = Elim.f (*eliminate unecessary definition*)
               (ConstFold.f (*constant folding*)
                  (Inline.f (*inline expansion*)
                     (Assoc.f (*let reduction*)
                        (Beta.f e)))) in (*beta reduction*)
  if e = e' then e else
  iter (n - 1) e'

let lexbuf outchan l glb_l= (* �Хåե��򥳥�ѥ��뤷�ƥ����ͥ�ؽ��Ϥ��� (caml2html: main_lexbuf) *)
  (*todo gflag�ˤ�äƾ��ʬ��*)
  Id.counter := 0;
  Typing.extenv := M.empty;
  if (!gflag = 0) then
  Emit.f !aaflag outchan (*generate assembly code*)
    (RegAlloc.f (*register allocation*)
       (Simm.f (*¨�ͺ�Ŭ��*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*��Ŭ��*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K������*)
                         (Typing.f (*type check *)
                            (Parser.exp Lexer.token l))))))))) (*parse the buffer*)
  else
    Emit.f !aaflag outchan (*generate assembly code*)
    (RegAlloc.f (*register allocation*)
       (Simm.f (*¨�ͺ�Ŭ��*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*��Ŭ��*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K������*)
                         (Typing.f (*type check *)
                            (Joinglb.f
                            (Parser.exp Lexer.token l) (Parser.exp Lexer.token glb_l)))))))))) (*parse the buffer*)

let string s glbchan = lexbuf stdout (Lexing.from_string s) (Lexing.from_string glbchan) (* ʸ����򥳥�ѥ��뤷��ɸ����Ϥ�ɽ������ (caml2html: main_string) *)

let file f = (* �ե�����򥳥�ѥ��뤷�ƥե�����˽��Ϥ��� (caml2html: main_file) *)
  let glbchan = open_in ("globals.ml") in
  let inchan = open_in (f ^ ".ml") in (*file name of ml program*)
  let outchan = open_out (f ^ ".s") in (* file name of assembly program*)
  try
    (*val Lexing.from_channel : Pervasives.in_channel -> lexbuf *)
    lexbuf outchan (Lexing.from_channel inchan) (Lexing.from_channel glbchan); (*call lexbuf function*)
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* �������饳��ѥ���μ¹Ԥ����Ϥ���� (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-g", Arg.Unit(fun _ -> gflag := 1), "include or not globals.ml");(*Unit�äƲ���������-g��Ĥ����Ȥ�,globals.ml��include����min-rt�򥳥�ѥ���Ǥ���褦�ˤʤ�*)
    ("-sim", Arg.Unit(fun _ -> aaflag := 1), "do not write 0xaa first")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] [-g] [-sim] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter (*apply the function "file" to the all files in the arguments*)
    (fun f -> ignore (file f)) 
    !files
