$:.unshift(File.join(File.dirname(__FILE__), "..","..","..",".."))
require 'helper'
require 'time'
require 'djb/daemontools/multilog/log'

describe Djb::Daemontools::Multilog::Log do
  describe "#to_s" do
    it "returns log as string" do
      @log = Djb::Daemontools::Multilog::Log.new("@400000004d81ed7004a435a4 query 9668 7f000001:e9cd:0b87 1 github.com.","test-service")
      expect(@log.to_s).to match /\[test-service\] query 9668 7f000001:e9cd:0b87 1 github.com\./
    end
  end
end
