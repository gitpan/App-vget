use inc::Module::Install;
include 'Module::AutoInstall';

name 'App-vget';
all_from 'lib/App/vget.pm';
perl_version '5.006';

requires 'LWP::Simple';

build_requires 'Test::More' => '0.70';

install_script glob('bin/*');

process_templates(
    first_year => 2007,
    rest_from  => "$ENV{HOME}/.mitlib/standard_pod",
    start_tag  => '{%',
    end_tag    => '%}',
);

use_standard_tests(without => 'pod_coverage');
auto_install;
auto_include;
WriteAll;
