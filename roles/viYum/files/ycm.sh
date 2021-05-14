#!/bin/bash
   
scl enable devtoolset-6 - << \EOF
cd ~/.vim/bundle/YouCompleteMe 
git submodule update --init --recursive

cd ~/ycm_build 
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp &&
cmake --build . --target ycm_core --config Release
EOF
