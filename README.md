This is an example of how to configure Caddy for CGI with a FastCGI-to-CGI wrapper. You may wish to use the [CGI plugin](https://github.com/jung-kurt/caddy-cgi) instead.

# How to run

1\. Clone this repository.

```sh
git clone --depth 1 https://github.com/dbohdan/caddy-cgi
```

2\. Download a Caddy binary appropriate for your OS and CPU architecture from <https://caddyserver.com/download>. Put it in the repository directory as the file `caddy` and make it executable. To do this on x86-64 Linux run

```sh
cd caddy-cgi/
wget -O caddy.tar.gz 'https://caddyserver.com/download/build?os=linux&arch=amd64&features='
tar xf caddy.tar.gz caddy
chmod +x caddy
```

3\. Install the required CPAN modules. In many cases, you can do it from the interactive CPAN shell.

```sh
cpan
> o conf make_install_make_command 'sudo make'
> o conf mbuild_install_build_command 'sudo ./Build'
> install CGI CGI::Carp FCGI
```

4\. Start Caddy and `fastcgi-wrapper` with

```sh
make
```

and go to <http://localhost:8081/cgi-bin/test.pl>.

On desktop Linux you can instead use the command

```sh
make browse run
```

To stop both Caddy and `fastcgi-wrapper` press Ctrl-C.

# Sources

* [`fastcgi-wrapper-daemon`](http://nginxlibrary.com/downloads/perl-fcgi/fastcgi-wrapper) by Denis S. Filimonov (direct download link)
* [`fastcgi-wrapper`](https://github.com/dermesser/fastcgi-wrappers) by Denis S. Filimonov and Lewin Bormann
