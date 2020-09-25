# caddy-cgi

This is an example of how to configure Caddy 1/2 for CGI with a FastCGI wrapper for CGI scripts.  You also have the option to use the [CGI plugin](https://github.com/jung-kurt/caddy-cgi) for Caddy 1 and [its fork](https://github.com/aksdb/caddy-cgi) for Caddy 2.


## How to run it

1\. Clone this repository.

```sh
git clone --depth 1 https://github.com/dbohdan/caddy-cgi
```

2\. Download a Caddy binary appropriate for your OS and CPU architecture from <https://github.com/caddyserver/caddy/releases>.  Put it in the repository directory as the file `caddy` and make it executable.  To do this on Linux run

```sh
cd caddy-cgi/
wget -O caddy.tar.gz <latest-Caddy-2-release>
tar xf caddy.tar.gz caddy
```

3\. Install [fcgiwrap](https://github.com/gnosek/fcgiwrap).  It may be available in your operating system's software repositories.

4\. Install the required CPAN modules for `test.pl`.  In many cases you can do this from the interactive CPAN shell.

```
cpan
> o conf make_install_make_command 'sudo make'
> o conf mbuild_install_build_command 'sudo ./Build'
> install CGI CGI::Carp
```

5\. Start Caddy and `fcgiwrap` with

```sh
make
```

and go to <http://localhost:8081/cgi-bin/test.pl>.

On desktop Linux you can instead use the command

```sh
make browse run
```

To stop both Caddy and `fcgiwrap` press Ctrl-C.


## License

MIT.
