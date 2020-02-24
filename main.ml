let limit = ref 1000
let gflag = ref 0
let aaflag = ref 0

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then Elim.f (Cse.f (ConstFold.f(Assoc.f (Beta.f  (Zero.f  (Closure_elim.f e)))) )) else
    let e' = Elim.f (*eliminate unecessary definition*)
               ( Cse.f
                   (ConstFold.f (*constant folding*)
                      ( IfElim.f 
                  (Inline.f (*inline expansion*)
                     (Assoc.f (*let reduction*)
                        (Beta.f e)))))) in (*beta reduction*)
    if e = e' then Elim.f (Cse.f (ConstFold.f(Assoc.f (Beta.f (Zero.f (Closure_elim.f e))))) ) else
  iter (n - 1) e'

let lexbuf outchan l glb_l= (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  (*todo gflagによって場合分け*)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let sim =
    if (!gflag = 0) then
             (Simm.f (*即値最適化*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*最適化*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K正規化*)
                         (Typing.f (*type check *)
                            (Parser.exp Lexer.token l)))))))) (*parse the buffer*)
    else
             (Simm.f (*即値最適化*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*最適化*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K正規化*)
                         (Typing.f (*type check *)
                            (Joinglb.f
                               (Parser.exp Lexer.token l) (Parser.exp Lexer.token glb_l))))))))) in
  if !Closure.cl_flag > 0 then
      Emit.f !aaflag outchan (*generate assembly code*)
        (RegAlloc.f (*register allocation*)
           sim)
  else
        Emit.f !aaflag outchan (*generate assembly code*)
      (RegAllocColor.f (*register allocation*)
          (Block.f sim))
    
(*  if (!gflag = 0) then
  Emit.f !aaflag outchan (*generate assembly code*)
    (RegAlloc.f (*register allocation*)
       (Simm.f (*即値最適化*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*最適化*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K正規化*)
                         (Typing.f (*type check *)
                            (Parser.exp Lexer.token l))))))))) (*parse the buffer*)
  else
(*    Emit.f !aaflag outchan (*generate assembly code*)
    (RegAlloc.f (*register allocation*)
       (Simm.f (*即値最適化*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*最適化*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K正規化*)
                         (Typing.f (*type check *)
                            (Joinglb.f
                            (Parser.exp Lexer.token l) (Parser.exp Lexer.token glb_l)))))))))) (*parse the buffer*)*)
    Emit.f !aaflag outchan (*generate assembly code*)
      (RegAllocColor.f (*register allocation*)
          (Block.f          
       (Simm.f (*即値最適化*)
          (Virtual.f (*generate vurtual machine code*)
             (Closure.f (*convert function to closure to elmininate nested function*)
                (iter !limit (*最適化*)
                   (Alpha.f (*alpha renaming*)
                      (KNormal.f (*K正規化*)
                         (Typing.f (*type check *)
                            (Joinglb.f
                            (Parser.exp Lexer.token l) (Parser.exp Lexer.token glb_l)))))))))))*)
let string s glbchan = lexbuf stdout (Lexing.from_string s) (Lexing.from_string glbchan) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let glbchan = open_in ("globals.ml") in
  let inchan = open_in (f ^ ".ml") in (*file name of ml program*)
  let outchan = open_out (f ^ ".s") in (* file name of assembly program*)
  try
    (*val Lexing.from_channel : Pervasives.in_channel -> lexbuf *)
    lexbuf outchan (Lexing.from_channel inchan) (Lexing.from_channel glbchan); (*call lexbuf function*)
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-g", Arg.Unit(fun _ -> gflag := 1), "include or not globals.ml");(*Unitって怪しいけど-gをつけたとき,globals.mlをincludeしてmin-rtをコンパイルできるようになる*)
    ("-sim", Arg.Unit(fun _ -> aaflag := 1), "do not write 0xaa first")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] [-g] [-sim] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter (*apply the function "file" to the all files in the arguments*)
    (fun f -> ignore (file f)) 
    !files
