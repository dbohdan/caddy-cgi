#!/usr/bin/env perl

use strict;
use warnings;

use CGI;
use CGI::Carp qw(warningsToBrowser fatalsToBrowser);

my $cgi = CGI->new;
print $cgi->header('text/html');

my $title = "CGI test";

print << "END_HTML";
<!DOCTYPE html>
<html>
    <head>
        <title>$title</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
    <body>
        <h1>$title</h1>
        <form method="post" enctype="multipart/form-data">
            Name: <input type="text" name="name" value="Anonymous"><br>
            Message: <input type="text" name="message"><p>
            <input type="submit" name="Submit" value="Submit">
        </form>
        <hr>
END_HTML

if ((my $name = $cgi->param('name'))
        && (my $message = $cgi->param('message'))) {
    print "${\$cgi->escapeHTML($name)}: ${\$cgi->escapeHTML($message)}\n";
}

print '</body></html>';
