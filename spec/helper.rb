# -*- coding: utf-8 -*-
$TESTING=true

require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

$:.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require 'rspec'
RSpec.configure do |config|
end
