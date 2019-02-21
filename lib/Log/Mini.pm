package Log::Mini;

use strict;
use warnings;

use Print3r::Logger::LoggerFILE;
use Print3r::Logger::LoggerSTDERR;

sub get_logger {
    my $class = shift;
    my ( $type, @args ) = @_;

    if ( $type eq 'file' ) {
        return Log::Mini::LoggerFILE->new(@args);
    }
    else {
        return Log::Mini::LoggerSTDERR->new(@args);
    }

}

1;
