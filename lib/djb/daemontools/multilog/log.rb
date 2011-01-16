#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'djb/tai64n'
module Djb
  module Daemontools
    module Multilog
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
    end
  end
end
