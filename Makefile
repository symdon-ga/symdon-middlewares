.PHONY: deploy
deploy:
	cd ansible && ansible-playbook site.yml


.PHONY: errbit-init
errbit-init:
	@# 初期ユーザーの情報がstdoutに表示される
	@# https://user-images.githubusercontent.com/50688746/72607325-c487c880-3963-11ea-9a80-8a611a85d53d.png
	docker-compose run errbit bundle exec rake errbit:bootstrap

