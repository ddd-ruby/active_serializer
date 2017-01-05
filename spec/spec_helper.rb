require 'rubygems'
require 'bundler/setup'
require 'byebug'

require 'simplecov'
SimpleCov.start do
  add_filter "/spec/"
  add_filter "/.direnv/"
end
if ENV['CI']=='true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'active_serializer'

RSpec.configure do |config|
end
