#!/usr/bin/env ruby
# vim:set fileencoding=utf-8:

require 'djb/tai64n'
module Djb
  module Daemontools
    module Multilog
      class Logs < Array
        def load(file)
          @file = file
          open(file) do |f|
            while line = f.gets
              self << Log.new(line,service)
            end
          end
          self
        end

        def service
          $1 if /\/([^\/]+)\/log\/main\/current/ =~ @file
        end

        def to_s
          join("\n",self)
        end

      end

      class Log 
        def initialize(line,service)
          @line = line
          @service = service
        end

        def tai64n
          return $1 if /^(@[a-z0-9]+) / =~ @line
        end

        def time
          Tai64n::to_local(tai64n)
        end

        def to_s
          if /^(@[a-z0-9]+) (.*)/ =~ @line
            "%s [%s] %s" % [time.strftime("%Y-%m-%d %H:%M:%S"),@service,$2]
          end
        end
      end

      class Collector
        def initialize(dir = "/service")
          @service_dir = dir
        end

        def collect
          all = Logs.new
          glob_pattern = @service_dir + "/*/log/main/current"
          Dir.glob(glob_pattern).each do |file| 
            all += Logs.new.load(file)
          end
          all.sort do |a,b|
            a.time <=> b.time
          end
        end
        
        
      end
      
    end
  end
end
=begin
# collector = Djb::Daemontools::Multilog::Collector.new("/Users/tumf/service")
# puts collector.collect
=end
