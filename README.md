# Vim Configuration (Simple and Minimalist)

### Installation
just run `make install` in repo
### Clean
```sh
make clean
```
### Purge (remove ~/.vim and ~/.vimrc)
```sh
make purge
```

## Build and configure Vim from source 
```sh
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local \ 
            --with-x
```

