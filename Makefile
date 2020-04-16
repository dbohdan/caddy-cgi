run:
	(./caddy run --config Caddyfile.v2 & ./fastcgi-wrapper)
browse:
	sleep 1 && xdg-open 'http://localhost:8081/cgi-bin/test.pl' &
.PHONY: browse run
