install:
	yarn install --frozen-lockfile

update:
	git fetch origin master --prune
	git pull origin
	git submodule update
	git submodule foreach bash -c "git fetch origin master --prune && git checkout master && git pull origin master"
	make install