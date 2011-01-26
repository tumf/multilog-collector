#!/usr/bin/env ruby

module Djb
  module Tai64n
    # Thanks.
    # http://d.hatena.ne.jp/unageanu/20091207
    def self.to_local tai
      raise "illegal format: #{tai}" unless tai =~ /\@40000000([\da-f]{8})([\da-f]{8})/
      Time.at($1.hex-10, $2.hex/1000.0)
    end
  end
end
