## ============ SERVER ============
sf: ## Launch Symfony local server
	php -S 127.0.0.1:8000 -t ./public
.PHONY: sf

stop: ## Stop Symfony local server
	npx kill-port 8000
	php bin/console cache:clear
.PHONY: stop

## ============ CONSOLE ============
cc: ## Symfony clear cache
	php bin/console cache:clear
.PHONY: cc

## ============ START SYMFONY SERVER WITH SYMFONY CLI ============
cli:
	symfony serve:start
.PHONY: cli

## ============ STOP SYMFONY SERVER ============
die:
	symfony serve:stop
.PHONY: die

## ============ Lunch in Chrome ============
ch: ## Launch Symfony local server
	C:\Users\marc\AppData\Local\Google\Chrome\Application\chrome.exe 127.0.0.1:8000
.PHONY: ch
