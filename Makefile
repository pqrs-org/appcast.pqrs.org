all:
	$(MAKE) -C appcast-updater

format:
	shfmt -w **/*.sh
