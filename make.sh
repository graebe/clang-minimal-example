# make hello world
filename="hw"
clang ./code/$filename.c -o ./llvmir/$filename.out
clang ./code/$filename.c -S -emit-llvm -o ./code/$filename.ll

# make add
filename="add"
clang ./code/$filename.c -o ./code/$filename.out
clang ./code/$filename.c -S -emit-llvm -o ./code/$filename.ll

# make addmult
filename="addmult"
clang ./code/$filename.c -o ./code/$filename.out
clang ./code/$filename.c -S -emit-llvm -o ./code/$filename.ll

# make identity
#filename="identity"
#clang ./code/$filename.c -o ./code/$filename.out
#clang ./code/$filename.c -S -emit-llvm -o ./code/$filename.ll