# Sumii's Makefile for Min-Caml (for GNU Make)
# 
# ack.mlなどのテストプログラムをtest/に用意してmake do_testを実行すると、
# min-camlとocamlでコンパイル・実行した結果を自動で比較します。

RESULT = min-caml
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall
OCAMLLDFLAGS=-warn-error -31

default: debug-code top $(RESULT) riscv_test
$(RESULT): debug-code top
## [自分（住井）用の注]
## ・OCamlMakefileや古いGNU Makeのバグ(?)で上のような定義が必要(??)
## ・OCamlMakefileではdebug-codeとnative-codeのそれぞれで
##   .mliがコンパイルされてしまうので、両方ともdefault:の右辺に入れると
##   再make時に（.mliが変更されているので）.mlも再コンパイルされる
clean:: nobackup

# ↓もし実装を改造したら、それに合わせて変える
SOURCES = float.c type.ml id.ml m.ml s.ml \
syntax.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml zero.mli zero.ml \
closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml \
joinglb.ml joinglb.mli \
main.mli main.ml 

# ↓テストプログラムが増えたら、これも増やす
TESTS = print sum-tail gcd sum fib ack even-odd \
adder funcomp cls-rec cls-bug cls-bug2 cls-reg-bug \
shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
join-reg join-reg2 non-tail-if non-tail-if2 \
inprod inprod-rec inprod-loop matmul matmul-flat \
manyargs

# ↓risc-v用のテストファイル
RISCVTESTSINT = fib ack adder cls-bug cls-rec cls-reg-bug funcomp gcd join-reg join-reg2 \
join-stack join-stack2 join-stack3 spill spill2 spill3 sum-tail sum even-odd cls-bug2 \
inprod-rec inprod inprod-loop matmul-flat matmul non-tail-if non-tail-if2 print shuffle \
fabs truncate floor fsqrt sin

#RISCVTESTSFLOAT = fibf

SLD = data/raytracer/sld/contest.sld
BIN = data/raytracer/sld/contest.sld.bin
STAT = stat.txt
IMG = out.ppm
ITER = 1000
INLINE = 0

raytrace: data/raytracer/raytrace $(BIN) data/raytracer/raytrace.symbols
	cpuex_sim $< -i $(BIN) -o $(IMG) --symbols data/raytracer/raytrace.symbols --statout $(STAT)
.PRECIOUS: data/raytracer/minrt.s data/raytracer/contest.sld.bin data/raytracer/raytrace data/raytracer/raytrace.symbols
TRASH = data/raytracer/minrt.s data/raytracer/contest.sld.bin data/raytracer/raytrace data/raytracer/raytrace.symbols
data/raytracer/minrt.s: $(RESULT) data/raytracer/minrt.ml
	./$(RESULT) -g  data/raytracer/minrt -iter $(ITER) -inline $(INLINE)
data/raytracer/sld/contest.sld.bin: $(SLD)
	cpuex_sld2bin $(SLD) $@
data/raytracer/raytrace data/raytracer/raytrace.symbols: data/raytracer/minrt.s libmincaml.S 
	cpuex_asm data/raytracer/raytrace data/raytracer/minrt.s libmincaml.S


do_test: $(TESTS:%=test/%.cmp)

.PRECIOUS: test/%.s test/% test/%.res test/%.ans test/%.cmp
TRASH = $(TESTS:%=test/%.s) $(TESTS:%=test/%) $(TESTS:%=test/%.res) $(TESTS:%=test/%.ans) $(TESTS:%=test/%.cmp)

test/%.s: $(RESULT) test/%.ml
	./$(RESULT) test/$*
test/%: test/%.s libmincaml.S stub.c
	$(CC) $(CFLAGS) -m32 $^ -lm -o $@
test/%.res: test/%
	$< > $@
test/%.ans: test/%.ml
	ocaml $< > $@
test/%.cmp: test/%.res test/%.ans
	diff $^ > $@


ASM = cpuex_asm
SIMULATOR = cpuex_sim

riscv_test: $(RISCVTESTSINT:%=riscv-test/%.cmp) #$(RISCVTESTSFLOAT:%=riscv-test/%.cmp) 

.PRECIOUS: riscv-test/%.s riscv-test/% riscv-test/%.res riscv-test/%.ans riscv-test/%.cmp
TRASH = $(RISCVTESTSINT:%=riscv-test/%.s) $(RISCVTESTSINT:%=riscv-test/%) $(RISCVTESTSINT:%=riscv-test/%.res) $(RISCVTESTSINT:%=riscv-test/%.ans) $(RISCVTESTSINT:%=riscv-test/%.cmp) $(RISCVTESTINT:%=riscv-test/sub/%.ml)#$(RISCVTESTSFLOAT:%=riscv-test/%.s) $(RISCVTESTSFLOAT:%=riscv-test/%) $(RISCVTESTSFLOAT:%=riscv-test/%.res) $(RISCVTESTSFLOAT:%=riscv-test/%.ans) $(RISCVTESTSFLOAT:%=riscv-test/%.cmp)

riscv-test/%.s: $(RESULT) riscv-test/%.ml
	./$(RESULT) riscv-test/$* -g 
riscv-test/%: riscv-test/%.s libmincaml.S 
	$(ASM) $@ $^
#$(RISCVTESTSFLOAT:%=riscv-test/%.res): $(RISCVTESTSFLOAT:%=riscv-test/%)
#	$(SIMULATOR) $< | cpuex_d2f > $@
riscv-test/%.res: riscv-test/%
	$(SIMULATOR) $< -o $@
riscv-test/sub/%.ml: riscv-test/%.ml riscv-test/lib/lib.ml
	cat riscv-test/lib/lib.ml $< > $@
riscv-test/%.ans: riscv-test/sub/%.ml
	ocaml $< > $@
riscv-test/%.cmp: riscv-test/%.res riscv-test/%.ans
	diff $^ > $@


min-caml.html: main.mli main.ml id.ml m.ml s.ml \
		syntax.ml type.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
		alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
		inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml \
		closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
		simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml
	./to_sparc
	caml2html -o min-caml.html $^
	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html

release: min-caml.html
	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

include OCamlMakefile
