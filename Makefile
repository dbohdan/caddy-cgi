run:
	(./caddy -conf Caddyfile -root root & ./fastcgi-wrapper)
browse:
	sleep 1 && xdg-open 'http://localhost:8081/cgi-bin/test.pl' &
.PHONY: browse run
