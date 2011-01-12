#!/usr/bin/env ruby
require 'optparse'

$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'djb/daemontools/multilog/collector'

directory = "/service"

opt = OptionParser.new
opt.on('--help', 'show this message') { puts opt; exit }
opt.on('-d DIR','--directory=DIR','service directory default: /service'){ |v| directory = v }
opt.parse!(ARGV)

puts Djb::Daemontools::Multilog::Collector.new(directory).collect
