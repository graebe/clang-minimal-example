# visualize function structure
# /usr/lib/llvm-8/bin/opt

mkdir graph

filename="hw"
mkdir ./graph/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg ./llvmir/$filename.ll
mv .main.dot ./graph/$filename/.main.dot
dot -Tpdf ./graph/$filename/.main.dot -o graph/$filename/.main.pdf

filename="add"
mkdir ./graph/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg ./llvmir/$filename.ll
mv .main.dot ./graph/$filename/.main.dot
mv .$filename.dot ./graph/$filename/.$filename.dot
dot -Tpdf ./graph/$filename/.main.dot -o graph/$filename/.main.pdf
dot -Tpdf ./graph/$filename/.$filename.dot -o graph/$filename/$filename.pdf

filename="addmult"
mkdir ./graph/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg ./llvmir/$filename.ll
mv .main.dot ./graph/$filename/.main.dot
mv .add.dot ./graph/$filename/.add.dot
mv .mult.dot ./graph/$filename/.mult.dot
dot -Tpdf ./graph/$filename/.main.dot -o graph/$filename/.main.pdf
dot -Tpdf ./graph/$filename/.add.dot -o graph/$filename/add.pdf

filename="identity"
mkdir ./graph/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg ./llvmir/$filename.ll
mv .main.dot ./graph/$filename/.main.dot
dot -Tpdf ./graph/$filename/.main.dot -o graph/$filename/.main.pdf
