require 'helper'
require 'time'

class TestMultilogCollector < Test::Unit::TestCase
  context "collect" do
    setup do
      @collector = Djb::Daemontools::Multilog::Collector.new
    end

    should "nomally" do
      @collector.stubs(:glob_pattern).returns("test/data/*")

      @collector.stubs(:glob_pattern).returns("test/data/*")
      logs = @collector.logs
      logs = @collector.collect
      assert_equal logs.length,18
      assert_equal @collector.collect.to_s.length,852
    end

    should "no logs" do
      @collector.stubs(:glob_pattern).returns("test/data2/*")
      logs = @collector.collect
      assert_equal logs.length,0
    end

    should "set lines" do
      @collector.stubs(:glob_pattern).returns("test/data/*")
      @collector.lines = 10
      assert_equal @collector.collect.length,10
    end
    
    should "glob_pattern" do
      assert_equal @collector.glob_pattern , "/service/*/log/main/current"
    end

  end

  context "tai64n" do
    should "@400000004d81ea243704f7f4 is 2011-03-17 20:01:46.923072500" do
      assert_equal Djb::Tai64n::to_local("@400000004d81ea243704f7f4"),Time.parse("2011-03-17 20:01:46.923072500")
    end
  end
end
