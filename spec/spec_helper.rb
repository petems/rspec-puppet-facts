require 'rspec'
require 'mocha/api'
require 'rspec-puppet-facts'
include RspecPuppetFacts

RSpec.configure do |config|
  config.mock_framework = :mocha

  config.order = :random

  config.before(:each) {
    $stdout.sync = true
    $stderr.sync = true

    @orig_stderr = $stderr
    @orig_stdout = $stdout

    $stderr = StringIO.new
    $stdout = StringIO.new
  }

  config.after(:each) {
    $stderr = @orig_stderr
    $stdout = @orig_stdout
  }
end
