#!/bin/env bash

echo $GNU_PREFIX

if [[ ${GNU_PREFIX} == 1 ]]; then
    echo "GNU_PREFIX == 1!"
    ./configure --prefix=$PREFIX --program-prefix=g
else
    echo "GNU_PREFIX =/= 1!"
    ./configure --prefix=$PREFIX
fi

make -j $CPU_COUNT
make install
make installcheck
