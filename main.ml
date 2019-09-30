let limit = ref 1000

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

let lexbuf outchan l = (* �Хåե��򥳥�ѥ��뤷�ƥ����ͥ�ؽ��Ϥ��� (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  Emit.f outchan (*generate assembly code*)
    (RegAlloc.f (*register allocation*)
       (Simm.f (*¨�ͺ�Ŭ��*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*��Ŭ��*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K������*)
                         (Typing.f (*type check *)
                            (Parser.exp Lexer.token l))))))))) (*parse the buffer*)

let string s = lexbuf stdout (Lexing.from_string s) (* ʸ����򥳥�ѥ��뤷��ɸ����Ϥ�ɽ������ (caml2html: main_string) *)

let file f = (* �ե�����򥳥�ѥ��뤷�ƥե�����˽��Ϥ��� (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in (*file name of ml program*)
  let outchan = open_out (f ^ ".s") in (* file name of assembly program*)
  try
    (*val Lexing.from_channel : Pervasives.in_channel -> lexbuf *)
    lexbuf outchan (Lexing.from_channel inchan); (*call lexbuf function*)
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* �������饳��ѥ���μ¹Ԥ����Ϥ���� (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter (*apply the function "file" to the all files in the arguments*)
    (fun f -> ignore (file f)) 
    !files
