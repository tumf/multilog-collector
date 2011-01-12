#!/usr/bin/env ruby
$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'djb/daemontools/multilog/collector'
puts Djb::Daemontools::Multilog::Collector.new.collect
