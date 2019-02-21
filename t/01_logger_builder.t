use lib 'lib';
use strict;
use warnings;

use Test::More;
use Test::Fatal;
use Log::Mini;

subtest 'creates stderr logger' => sub {
    my $logger = Log::Mini->get_logger('stderr');

    isa_ok $logger, 'Log::Mini::LoggerSTDERR';
};

subtest 'creates file logger' => sub {
    my $logger = Log::Mini->get_logger('file');

    isa_ok $logger, 'Log::Mini::LoggerFILE';
};

subtest 'throws when unknown logger' => sub {
    # ok exception { Logger->build('unknown') };
    my $logger = Log::Mini->get_logger('unknown');
    isa_ok $logger, 'Log::Mini::LoggerSTDERR';
};

done_testing;