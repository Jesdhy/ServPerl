use strict;
use warnings;
use Mojolicious::Lite;

get '/' => { text => 'Hola Mundo' };

app->start;
