# preparation
mkdir binary
mkdir llvmir

# make hello world
for filename in "hw" "add" "addmult" "identity"
do
    clang ./code/$filename.c -o ./code/$filename.out
    clang ./code/$filename.c -S -emit-llvm -o ./code/$filename.ll
    mv ./code/$filename.out ./binary/$filename.out 
    mv ./code/$filename.ll ./llvmir/$filename.ll 
done
