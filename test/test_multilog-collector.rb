require 'helper'

class TestMultilogCollector < Test::Unit::TestCase
  should "dummy" do
    collector = Djb::Daemontools::Multilog::Collector.new
    assert collector
  end
end
