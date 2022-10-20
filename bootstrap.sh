#!/bin/bash

mkdir components
docker run -d -p 8000:22 -v $(pwd):/workspaces -e PATH=/workspaces/components/cmake-3.23.4-linux-x86_64/bin:/workspaces/components/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin --name i_love_chacha aoikazto/sshd:ubuntu20.04

wget https://releases.linaro.org/components/toolchain/binaries/6.3-2017.02/aarch64-linux-gnu/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu.tar.xz -P components && \
tar -zxvf components/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu.tar.xz -C components

wget https://github.com/Kitware/CMake/releases/download/v3.23.4/cmake-3.23.4-linux-x86_64.tar.gz -P components && \
tar -zxvf components/cmake-3.23.4-linux-x86_64.tar.gz -C components

rm -rf components/cmake-3.23.4-linux-x86_64.tar.gz && \
rm -rf components/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu.tar.xz

