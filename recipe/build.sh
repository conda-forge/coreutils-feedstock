# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux

if [[ "$target_platform" == osx-arm64 ]]; then
    ./configure --prefix=$PREFIX --host=arm64
else
    ./configure --prefix=$PREFIX
fi

make -j $CPU_COUNT
make install
make installcheck
