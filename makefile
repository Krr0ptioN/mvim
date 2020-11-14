
DOTVIM=~/.vim
copy = cp -r

rc:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup
	[ -d ~/.vim ] && mv ~/.vim ~/.vim.backup
	$(copy) ./src/.vimrc ~/.vimrc
	$(copy) ./src/init.vim ~/.config/nvim/init.vim
	$(copy) ./src/coc-settings.json ~/.config/nvim/coc-settings.json
	vim +PlugInstall
	vim +CocInstall coc-tabnine
install: rc 

backup:
	$(copy) ~/.vimrc ./src/
	$(copy) ~/.config/nvim/init.vim ./src/
	$(copy) ~/.config/nvim/coc-settings.json ./src/
clean:
	rm -rf ~/.vimrc
