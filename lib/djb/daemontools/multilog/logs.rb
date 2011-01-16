#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'djb/daemontools/multilog/log'
module Djb
  module Daemontools
    module Multilog
      class Logs < Array

        def load(file,lines = nil)
          @file = file
          open(file) do |f|
            n = 0
            while line = f.gets
              n += 1
              self << Log.new(line,service)
              break if lines and n >= lines
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
    end
  end
end
