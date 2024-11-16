use strict;
use warnings;
use HTTP::Server::Simple::CGI;

{
    package WebApp;

    use base qw(HTTP::Server::Simple::CGI);

    sub handle_request {

        my ($self, $cgi) = @_;
        print "<h1>Hello world</h1>";
    }
}

my $server = WebApp->new(7070);

$server->run();
