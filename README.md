# min-caml compiler
min-caml compiler for RISC-V
Basic usage is same as original min-caml compiler. (https://github.com/esumii/min-caml)


## How to use
* You can build the compiler by following code.
```sh
./to_riscv && make byte-code 
```
* Compiling min-caml code is done by following code.(do not include .ml for the file name)
```sh
./min-caml hoge
```
* Test is executed by following code. Assembler(https://github.com/cpuex2019-7th/assembler) and simulator (https://github.com/cpuex2019-7th/simulator) have to be pre-installed.
```sh
make riscv_test
```
## Options
* `-g` min-caml code is compiled with some library neccesary for raytracing program
* `-sim` no need because the current version of simulator ignores first output word(do not emit 0xaa to the output file)

## Simulating raytracer program
Raytracer program can be simulated by following code.(Assembler and simulater are neccessary)
```sh
./min-caml -g  data/raytracer/minrt && cpuex_sld2bin data/raytracer/sld/contest.sld data/raytracer/sld/contest.sld.bin && cpuex_asm raytrace data/raytracer/minrt.s libmincaml.S && cpuex_sim raytrace -o output.ppm -i data/raytracer/sld/contest.sld.bin
```
You can do in following code instead. As default, file will be compiled with no inlining optimization and stat file 'stat.txt' and output figure 'output.ppm' will be created.
```sh
make raytrace 
```
### Argument
You can specify the iteration numbers(default: 1000), inline size(default: 0), 
* `ITER` iteration times of optimization(default: 1000)
* `INLINE` maximum size of inlined function(default: 0)
* `STAT` stat file name(default: stat.txt)
* `IMG` output image name(default: out.ppm)
Example
```sh
make raytrace ITER=100 INLINE=30 STAT=example.txt IMG=example.ppm
```