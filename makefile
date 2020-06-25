
DOTVIM=~/.vim
copy = cp -r

rc:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup
	[ -d ~/.vim ] && mv ~/.vim ~/.vim.backup
	$(copy) ./src/.vimrc ~/.vimrc
	vim +PlugInstall
install: rc 

backup:
	$(copy) ~/.vimrc ./src/

clean:
	rm -rf ~/.vimrc
purge:
	rm -rf $(vim) ~/.vimrc
