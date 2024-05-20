path=$1
nasm -f elf64 $path -o build/${path%.*}.o
ld build/${path%.*}.o -o build/${path%.*}
