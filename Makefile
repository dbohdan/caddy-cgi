run:
	(./caddy -conf Caddyfile -root root & ./fastcgi-wrapper)
browse:
	xdg-open 'http://localhost:8081/cgi-bin/test.pl'
.PHONY: browse run
