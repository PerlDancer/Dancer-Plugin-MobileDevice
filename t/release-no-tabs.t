
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    print qq{1..0 # SKIP these tests are for release candidate testing\n};
    exit
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.15

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Dancer/Plugin/MobileDevice.pm',
    't/00-compile.t',
    't/00-load.t',
    't/01-is-mobile-device.t',
    't/02-tokens.t',
    't/03-dynamic-layout.t',
    't/logs/development.log',
    't/manifest.t',
    't/pod-coverage.t',
    't/pod.t',
    't/views/index.tt',
    't/views/layouts/main.tt',
    't/views/layouts/mobile.tt'
);

notabs_ok($_) foreach @files;
done_testing;
