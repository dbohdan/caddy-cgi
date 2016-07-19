This is an example of how to configure Caddy for CGI.

# How to run

Run this example on x86-64 Linux with the command

```sh
make browse run
```

This will start the included copy of Caddy and `fastcgi-wrapper` and open the test URL in your default browser.

You may need to install the required CPAN modules with

```sh
sudo cpan install CGI CGI::Carp FCGI
```

On a different operating system or CPU architecture replace the file `caddy` with an appropriate one from <https://caddyserver.com/download>. Start Caddy and `fastcgi-wrapper` with

```sh
make run
```

and go to <http://localhost:8081/cgi-bin/test.pl>.

Stop it with Ctrl-C.

# Sources

* [`fastcgi-wrapper-daemon`](http://nginxlibrary.com/downloads/perl-fcgi/fastcgi-wrapper) (direct download link)
* [`fastcgi-wrapper`](https://github.com/dermesser/fastcgi-wrappers)
