use strict;
use warnings;
use HTTP::Server::Simple::CGI;

# Define the server package
{
    package WebApp;
    use base qw(HTTP::Server::Simple::CGI);

    sub handle_request {
        my ($self, $cgi) = @_;

        # Set content-type header
        print "HTTP/1.0 200 OK\r\n";
        print $cgi->header("text/html");

        # Print response body
        print "<h1>Hello from Perl!</h1>";
        print "<h1>Name: Willian Vargas!</h1>";
    }
}

# Start the server on port 8080
my $server = WebApp->new(8080);
print "Perl web server running on port 8080...\n";
$server->run();

