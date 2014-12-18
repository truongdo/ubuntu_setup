#!/bin/bash

if [[ -d vim-latex ]];then
    rm -rf vim-latex
fi
git clone https://github.com/vim-latex/vim-latex.git || exit 1
if [[ -f ~/.vim/ftplugin/latex-suite ]];then
    rm ~/.vim/ftplugin/latex-suite
fi

cp -rf vim-latex/* ~/.vim || exit 1
rm -rf vim-latex || exit 1
echo "filetype plugin on"  >> ~/.vimrc
echo "let g:tex_flavor='latex'" >> ~/.vimrc
echo "set grepprg=grep\ -nH\ \$*" >> ~/.vimrc
echo "set sw=2" >> ~/.vim/ftplugin/tex.vim
echo "set iskeyword+=:" >> ~/.vim/ftplugin/tex.vim
