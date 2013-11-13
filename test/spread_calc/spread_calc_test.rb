require_relative "../test_helper"
require_relative "../../lib/spread_calc/spread_calc"

class SpreadCalcTest < Test::Unit::TestCase
  def test_minimum
    assert_equal min, subject.minimum
  end

  private

  def subject
    SpreadCalc.new(spread_data: test_data, max_method: :max, min_method: :min)
  end

  def test_data
    [max, mid, min]
  end

  def max
    SpreadData.new(max: 10, min: 1)
  end

  def mid
    SpreadData.new(max:7, min: 3)
  end

  def min
    SpreadData.new(max:"5", min: "4")
  end

  class SpreadData
    attr_reader :max, :min
    def initialize(max: max, min: min)
      @max = max
      @min = min
    end

    def ==(other)
      other.max == self.max and other.min == self.min
    end
  end


end