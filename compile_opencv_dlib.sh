echo "compiling $1"
if [[ $1 == *.cpp ]]
then
    g++ -O3 -lpthread `pkg-config --cflags opencv` -o `basename $1 .cpp` $1 `pkg-config --libs opencv` -std=c++11 -ldlib;
    echo "Output file => ${1%.*}"
else
    echo "Please compile only .cpp files"
fi
