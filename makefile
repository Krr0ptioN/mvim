
DOTVIM=~/.vim
copy = cp -r

rc:
	$(copy) ./src/.vimrc ~/ 

install: rc 

backup:
	$(copy) ~/.vimrc ./src/

clean:
	rm -rf ~/.vimrc
purge:
	rm -rf $(vim) ~/.vimrc
