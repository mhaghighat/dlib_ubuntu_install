echo "compiling $1"
if [[ $1 == *.cpp ]]
then
    g++ -std=c++11 -O3 -I/home/mohammad/Dlib/dlib/ /home/mohammad/Dlib/dlib/dlib/all/source.cpp -lpthread -lX11 -o `basename $1 .cpp` $1 -ldlib;
    echo "Output file => ${1%.*}"
else
    echo "Please compile only .cpp files"
fi
