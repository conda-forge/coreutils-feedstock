# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux
./configure --prefix=$PREFIX --host=${target_platform}

make -j $CPU_COUNT
make install
make installcheck
