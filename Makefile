DIR=/srv/pages-calc-web
.PHONY: dir clean restart
restart:
	@$(DIR)/.pages-build restart
new:
	@$(DIR)/.pages-build new
rm:
	@$(DIR)/.pages-build rm
clean:
	@$(DIR)/.pages-build clean
