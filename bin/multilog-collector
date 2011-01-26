#!/usr/bin/env ruby
require 'optparse'

$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'djb/daemontools/multilog/collector'

directory = "/service"
collector = Djb::Daemontools::Multilog::Collector.new

opt = OptionParser.new
opt.on('--help', 'show this message') { puts opt; exit }
opt.on('-d DIR','--directory=DIR','service directory default: /service'){ |v| collector.directory = v }
opt.on('-l N','--lines=N','lines to collect default: 100'){ |v| collector.lines = v.to_i }
opt.parse!(ARGV)

puts collector.collect

