run:
	RAILS_ENV=production SECRET_KEY_BASE=wang puma -C config/puma.rb
compile:
	RAILS_ENV=production SECRET_KEY_BASE=wang rails assets:precompile
	rm -rf /usr/share/xblog/packs/*
	cp -r public/packs/* /usr/share/xblog/packs
restart:
	pumactl -P tmp/pids/puma.pid restart
