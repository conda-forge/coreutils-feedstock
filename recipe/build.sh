# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux

if [[ "$target_platform" == osx-arm64 ]]; then
    ./configure --prefix=$PREFIX --host=arm64
    make -j $CPU_COUNT
    make install
else
    ./configure --prefix=$PREFIX
    make -j $CPU_COUNT
    make install
    make installcheck
fi
