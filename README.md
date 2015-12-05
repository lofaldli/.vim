# .vim

my vim config

![Tag](http://i.imgur.com/etWLNKJ.gif) ![Tag](http://i.imgur.com/c4J95hH.gif) ![Tag](http://i.imgur.com/Sl7UbNI.gif) ![Tag](http://i.imgur.com/xaoeuKp.gif)

## installing vundle for plugin management
  
  `git clone https://github.com/gmarik/Vundle.vim bundle/Vundle.vim`
  
## compiling YouCompleteMe
  
  ```
  cd .vim/bundle/YouCompleteMe
  ./install.sh
  ```

## installing fonts fo vim-airline

1. clone patched powerline fonts
  
  ```
  git clone http://github.com/powerline/fonts.git
  cd fonts
  ./install.sh
  ```
  
2. download the latest version of the symbol font and fontconfig file
  
  ```
  wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
  wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
  ```
  
3. move the symbol font to a valid X font path. Valid font paths can be listed with xset q:
  
  ```
  mv PowerlineSymbols.otf ~/.fonts/
  ```
  
4. update font cache for the path the font was moved to (root priveleges may be needed to update cache for the system-wide paths):
  
  ```
  fc-cache -vf ~/.fonts/
  ```
  
5. install the fontconfig file. for newer versions of fontconfig the config path is ~/.config/fontconfig/conf.d/, for older versions it’s ~/.fonts.conf.d/:
  
  ```
  mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
  ```
  
([source](http://powerline.readthedocs.org/en/master/installation/linux.html#fonts-installation))

