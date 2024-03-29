use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Statistics::Bartlett',
    license             => 'perl',
    dist_author         => 'Daniel S. T. Hughes <dsth@cantab.net>',
    dist_version_from   => 'lib/Statistics/Bartlett.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
        'Statistics::Distributions' => '1.02', 
        'Math::Cephes' => '0.47', 
        'Carp' => '1.08', 'Perl6::Form' => '0.04',
        'List::Util' => '1.19',
    },
    add_to_cleanup      => [ 'Statistics-Bartlett-*' ],
);

$builder->create_build_script();
