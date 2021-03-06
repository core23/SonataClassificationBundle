.PHONY: test

cs:
	php-cs-fixer fix --verbose

cs_dry_run:
	php-cs-fixer fix --verbose --dry-run

test:
	phpunit
	cd Resources/doc && sphinx-build -W -b html -d _build/doctrees . _build/html

bower:
	/usr/local/node/node-v0.10.22/bin/bower update
