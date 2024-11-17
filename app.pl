use strict;
use warnings;
use HTTP::Server::Simple::CGI;

{
    package WebApp;
    use base qw(HTTP::Server::Simple::CGI);

    sub handle_request {
        my ($self, $cgi) = @_;
        print "HTTP/1.0 200 OK\r\n";
        print $cgi->header("text/html");
        print "<h1>Hello world</h1>";
    }
}

my $server = WebApp->new(8080);
$server->run();

