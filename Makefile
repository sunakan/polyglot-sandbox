include makefiles/gitignore.mk
include makefiles/ytt.mk
include makefiles/rq.mk
include makefiles/help.mk

################################################################################
# 変数
################################################################################

################################################################################
# マクロ
################################################################################

################################################################################
# タスク
################################################################################
.PHONY: deploy-docs
deploy-docs: ## ドキュメントをデプロイする
	git subtree push --prefix docs/html/ origin gh-pages

.PHONY: build
build:
	docker-compose build

.PHONY: ts-node
ts-node: ## TypeScript REPL
	docker-compose run --rm ts-node bash

.PHONY: ruby
ruby: ## Ruby REPL
	docker-compose run --rm ruby bash

.PHONY: chown
chown: ## chown -R $(id -u):$(id -g) ./
	sudo chown -R $(shell id -u):$(shell id -g) ./
