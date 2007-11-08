use inc::Module::Install;
name 'App-vget';
all_from 'lib/App/vget.pm';
perl_version '5.006';

requires 'LWP::Simple';

build_requires 'Test::More' => '0.70';

install_script glob('bin/*');

use_standard_tests(without => 'pod_coverage');
auto_include;
WriteAll;
