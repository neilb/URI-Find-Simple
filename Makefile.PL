use ExtUtils::MakeMaker;
require 5.006;

my $mm_ver = $ExtUtils::MakeMaker::VERSION;
if ($mm_ver =~ /_/) { # dev version
    $mm_ver = eval $mm_ver;
    die $@ if $@;
}

WriteMakefile(
    'NAME' => 'URI::Find::Simple',
    'VERSION_FROM' => 'lib/URI/Find/Simple.pm',
    'PREREQ_PM' => {
        'URI::Find'  => 0,
        'Carp'       => 0,
        'Encode'     => 0,
        'strict'     => 0,
        'warnings'   => 0,
    },

    ($mm_ver >= 6.31
        ? (LICENSE => 'perl')
        : ()
    ),

    ($mm_ver >= 6.48
        ? (MIN_PERL_VERSION => 5.006)
        : ()
    ),

    ($mm_ver >= 6.64
        ? (TEST_REQUIRES => {
                'Test::More' => 0.88,
          })
        : ()
    ),

);
