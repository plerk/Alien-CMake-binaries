VERSION=3.3.1

wget http://www.cmake.org/files/v3.3/cmake-$VERSION.tar.gz
gzip -d cmake-$VERSION.tar.gz
tar xf cmake-$VERSION.tar
cd cmake-$VERSION
cmake -DCMAKE_FIND_LIBRARY_SUFFIXES=.a -DBUILD_SHARED_LIBRARIES=OFF -DCMAKE_EXE_LINKER_FLAGS=-static -DBUILD_CursesDialog=OFF .
make package
