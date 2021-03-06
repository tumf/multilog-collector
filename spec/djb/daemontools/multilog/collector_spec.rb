$:.unshift(File.join(File.dirname(__FILE__), "..","..","..",".."))
require 'helper'
require 'time'
require 'djb/daemontools/multilog/collector'

describe Djb::Daemontools::Multilog::Collector do
  before do
    @collector = Djb::Daemontools::Multilog::Collector.new
  end

  describe "#collect" do
    context "when it load from data directory" do
      it "returns logs" do
        @collector.stub(:glob_pattern).and_return("spec/data/*")
        expect(@collector.collect.length).to eq 18
      end
    end
    
    context "when it has no logs" do
      it "returns logs" do
        @collector.stub(:glob_pattern).and_return("spec/data2/*")
        logs = @collector.collect
        expect(logs.length).to eq 0
      end
    end

    context "when it set lines" do
      it "returns 10" do
        @collector.stub(:glob_pattern).and_return("spec/data/*")
        @collector.lines = 10
        expect(@collector.collect.length).to eq 10
      end
    end
  end
  
  describe "#glob_pattern" do
    it "returns default value" do
      expect(@collector.glob_pattern).to eq "/service/*/log/main/current"
    end
  end
  
end
