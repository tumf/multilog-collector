#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'djb/daemontools/multilog/logs'
module Djb
  module Daemontools
    module Multilog
      class Collector
        attr_accessor :service_dir,:lines
        alias directory= service_dir=

        def initialize(dir = "/service")
          @lines = 100
          @service_dir = dir
        end

        def collect
          all = Logs.new
          glob_pattern = @service_dir + "/*/log/main/current"
          Dir.glob(glob_pattern).each do |file| 
            all += Logs.new.load(file,@lines)
          end
          all.sort! do |a,b|
            a.time <=> b.time
          end
          # all[all.length - @lines..-1]
          all[-@lines..-1]
        end
      end
      
    end
  end
end
=begin
#collector = Djb::Daemontools::Multilog::Collector.new("/Users/tumf/service")
#puts collector.collect
=end
