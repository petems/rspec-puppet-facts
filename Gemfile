source ENV['GEM_SOURCE'] || "https://rubygems.org"

group :development, :test do
  gem 'json',  :require => false
  gem 'mocha', :require => false
  gem 'rake',  :require => false
  gem 'rspec', :require => false
end

if facterversion = ENV['FACTER_GEM_VERSION']
  gem 'facter', facterversion, :require => false
else
  gem 'facter', :require => false
end
