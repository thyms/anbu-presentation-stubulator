# type 'make -s list' to see list of targets.

run-app:
	PORT=5001 ./node_modules/forever/bin/forever ./node_modules/nodemon/nodemon.js server.js

test-app:
	echo 'No test to run for this project'

test-app-ci:
	echo 'No test to run for this project'

setup-app:
	npm install
	git remote add stubulator01 git@heroku.com:anbu-presentation-stub01.git

setup-heroku:
	heroku apps:create --remote stubulator01 --app anbu-presentation-stub01
	heroku config:add NODE_ENV=stubulator01  --app anbu-presentation-stub01

.PHONY: no_targets__ list
no_targets__:
list:
	sh -c "$(MAKE) -p no_targets__ | awk -F':' '/^[a-zA-Z0-9][^\$$#\/\\t=]*:([^=]|$$)/ {split(\$$1,A,/ /);for(i in A)print A[i]}' | grep -v '__\$$' | sort"
