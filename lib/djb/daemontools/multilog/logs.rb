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
            while line = f.gets
              self << Log.new(line,service) rescue {}
            end
          end
          self
        end

        def service
          $1 if /\/([^\/]+)\/log\/main\/current/ =~ @file
        end

      end
    end
  end
end
