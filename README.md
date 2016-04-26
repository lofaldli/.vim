# .vim

0. install a proper vim version (not `vim-tiny`)

        sudo apt install vim

1. install vundle for plugin management
  
        git clone https://github.com/gmarik/Vundle.vim bundle/Vundle.vim

2. install other plugins

        vi vimrc
        :PluginInstall
        :q!
  
3. build ycm (requires `cmake`, `g++` and `python-dev`)
  
        python bundle/YouCompleteMe/install.py

## sources

[1](http://marcgg.com/blog/2016/03/01/vimrc-example)
[2](https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/#.Vi9-CN7uzXY.reddit)
