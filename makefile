
DOTVIM=~/.vim
copy = cp -r

rc:
	[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup
	[ -d ~/.vim ] && mv ~/.vim ~/.vim.backup
	$(copy) ./src/.vimrc ~/.vimrc

install: rc 

backup:
	$(copy) ~/.vimrc ./src/

clean:
	rm -rf ~/.vimrc
purge:
	rm -rf $(vim) ~/.vimrc
