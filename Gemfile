source 'https://rubygems.org'

puppetversion = ENV.key?('PUPPET_VERSION') ? "= #{ENV['PUPPET_VERSION']}" : ['>= 3.3']

group :test do
  gem 'puppetlabs_spec_helper', '>= 0.1.0', :require => false
  gem 'puppet-lint', '>= 0.3.2', :require => false
end

group :system_tests do
  gem 'beaker', :require => false
  gem 'beaker-rspec', :require => false
  gem 'beaker-puppet_install_helper', :require => false
end

gem 'puppet', puppetversion
gem 'facter', '>= 1.7.0'
