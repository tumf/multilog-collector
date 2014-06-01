$:.unshift(File.join(File.dirname(__FILE__), ".."))
require 'helper'
require 'time'
require 'djb/tai64n.rb'

describe Djb::Tai64n do
  describe ".to_local" do
    it "returns 2011-03-17 20:01:46.923072500 UTC" do
      expect(Djb::Tai64n::to_local("@400000004d81ea243704f7f4")).to eq Time.parse("2011-03-17 11:01:46.923072500 UTC")
    end
  end
end
