

.PHONY: format_yang
format_yang:
	cd $(CURDIR); find ./ -name "*.yang" | xargs -I{} bash -c "cp {} {}.bak && if pyang --ignore-error MODULE_NOT_FOUND -f yang {}.bak > {}; then rm {}.bak ; else echo 'Error processing {}' ; mv {}.bak {} ; fi"