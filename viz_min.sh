mkdir graph_min

filename="hw"
mkdir ./graph_min/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg-only ./llvmir/$filename.ll
mv .main.dot ./graph_min/$filename/.main.dot
dot -Tpdf ./graph_min/$filename/.main.dot -o graph_min/$filename/.main.pdf

filename="add"
mkdir ./graph_min/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg-only ./llvmir/$filename.ll
mv .main.dot ./graph_min/$filename/.main.dot
mv .$filename.dot ./graph_min/$filename/.$filename.dot
dot -Tpdf ./graph_min/$filename/.main.dot -o graph_min/$filename/.main.pdf
dot -Tpdf ./graph_min/$filename/.$filename.dot -o graph_min/$filename/$filename.pdf

filename="addmult"
mkdir ./graph_min/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg-only ./llvmir/$filename.ll
mv .main.dot ./graph_min/$filename/.main.dot
mv .add.dot ./graph_min/$filename/.add.dot
mv .mult.dot ./graph_min/$filename/.mult.dot
dot -Tpdf ./graph_min/$filename/.main.dot -o graph_min/$filename/.main.pdf
dot -Tpdf ./graph_min/$filename/.add.dot -o graph_min/$filename/add.pdf

filename="identity"
mkdir ./graph_min/$filename
/usr/lib/llvm-8/bin/opt -dot-cfg-only ./llvmir/$filename.ll
mv .main.dot ./graph_min/$filename/.main.dot
dot -Tpdf ./graph_min/$filename/.main.dot -o graph_min/$filename/.main.pdf
