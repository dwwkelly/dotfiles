#!/bin/bash


## BASHRC

if [ -h ~/.bashrc ]; then
    echo 'Found .bashrc symlink, doing nothing'
elif ! [ -e ~/.bashrc ]; then
    echo 'Instlling ~/.bashrc'
    ln -s ${PWD}/bashrc ~/.bashrc
else
    echo 'Found a .bashrc, delete then re-install'
fi

## BASH_LOGOUT

if [ -h ~/.bash_logout ]; then
    echo 'Found .bash_logout symlink, doing nothing'
elif ! [ -e ~/.bash_logout ]; then
    echo 'Instlling ~/.bash_logout'
    ln -s ${PWD}/bashrc ~/.bash_logout
else
    echo 'Found a .bash_logout, delete then re-install'
fi

## BASH_PROFILE

if [ -h ~/.bash_profile ]; then
    echo 'Found .bash_profile symlink, doing nothing'
elif ! [ -e ~/.bash_profile ]; then
    echo 'Instlling ~/.bash_profile'
    ln -s ${PWD}/bashrc ~/.bash_profile
else
    echo 'Found a .bash_profile, delete then re-install'
fi

## VIMRC

if [ -h ~/.vimrc ]; then
    echo 'Found .vimrc symlink, doing nothing'
elif ! [ -e ~/.vimrc ]; then
    echo 'Installing ~/.vim/vimrc'
    ln -s ${PWD}/vimrc ~/.vimrc
else
    echo 'Found a .vim/vimrc, delete then re-install'
fi


## CLANG-FORMAT

if [ -h ~/.clang-format ]; then
    echo 'Found .clang-format symlink, doing nothing'
elif ! [ -e ~/.clang-format ]; then
    echo 'Installing ~/.clang-format'
    ln -s ${PWD}/clang-format ~/.clang-format
else
    echo 'Found a .clang-format, delete then re-install'
fi

## DIR_COLORS

if [ -h ~/.dir_colors ]; then
    echo 'Found .dir_colors symlink, doing nothing'
elif ! [ -e ~/.dir_colors ]; then
    echo 'Installing ~/.dir_colors'
    ln -s ${PWD}/dir_colors ~/.dir_colors
else
    echo 'Found a .dir_colors, delete then re-install'
fi



## GIT-COMPLETION

if [ -h ~/.git-completion ]; then
    echo 'Found .git-completion symlink, doing nothing'
elif ! [ -e ~/.git-completion ]; then
    echo 'Installing ~/.git-completion'
    ln -s ${PWD}/git-completion ~/.git-completion
else
    echo 'Found a .git-completion, delete then re-install'
fi

## GITCONFIG

if [ -h ~/.gitconfig ]; then
    echo 'Found .gitconfig symlink, doing nothing'
elif ! [ -e ~/.gitconfig ]; then
    echo 'Installing ~/.gitconfig'
    ln -s ${PWD}/gitconfig ~/.gitconfig
else
    echo 'Found a .gitconfig, delete then re-install'
fi

## GITIGNORE

if [ -h ~/.gitignore ]; then
    echo 'Found .gitignore symlink, doing nothing'
elif ! [ -e ~/.gitignore ]; then
    echo 'Installing ~/.gitignore'
    ln -s ${PWD}/gitignore ~/.gitignore
else
    echo 'Found a .gitignore, delete then re-install'
fi

## TMUX.CONF

if [ -h ~/.tmux.conf ]; then
    echo 'Found .tmux.conf symlink, doing nothing'
elif ! [ -e ~/.tmux.conf ]; then
    echo 'Installing ~/.tmux.conf'
    ln -s ${PWD}/tmux.conf ~/.tmux.conf
else
    echo 'Found a .tmux.conf, delete then re-install'
fi

## YCM_EXTRA_CONF

if [ -h ~/.ycm_extra_conf.py ]; then
    echo 'Found .ycm_extra_conf.py symlink, doing nothing'
elif ! [ -e ~/.ycm_extra_conf.py ]; then
    echo 'Installing ~/.ycm_extra_conf.py'
    ln -s ${PWD}/ycm_extra_conf.py ~/.ycm_extra_conf.py
else
    echo 'Found a .ycm_extra_conf.py, delete then re-install'
fi

## COOKIECUTTERRC

if [ -h ~/.cookiecutterrc ]; then
    echo 'Found .cookiecutterrc symlink, doing nothing'
elif ! [ -e ~/.cookiecutterrc ]; then
    echo 'Installing ~/.cookiecutterrc'
    ln -s ${PWD}/cookiecutterrc ~/.cookiecutterrc
else
    echo 'Found a .cookiecutterrc, delete then re-install'
fi


## FONTCONFIG
## DIR

if [ -h ~/.fontconfig ]; then
    echo 'Found .fontconfig symlink, doing nothing'
elif ! [ -e ~/.fontconfig ]; then
    echo 'Installing ~/.fontconfig'
    ln -s ${PWD}/fontconfig ~/.fontconfig
else
    echo 'Found a .fontconfig delete then re-install'
fi

## GNURADIO
## DIR

if [ -h ~/.gnuradio ]; then
    echo 'Found .gnuradio symlink, doing nothing'
elif ! [ -e ~/.gnuradio ]; then
    echo 'Installing ~/.gnuradio'
    ln -s ${PWD}/gnuradio ~/.gnuradio
else
    echo 'Found a .gnuradio delete then re-install'
fi

## IPYTHON
## DIR

if [ -h ~/.ipython ]; then
    echo 'Found .ipython symlink, doing nothing'
elif ! [ -e ~/.ipython ]; then
    echo 'Installing ~/.ipython'
    ln -s ${PWD}/ipython ~/.ipython
else
    echo 'Found a .ipython delete then re-install'
fi
