require_relative '../test_helper'
require_relative "../../lib/weather/weather_stat"

class WeatherStatTest < Test::Unit::TestCase
  def test_day
    assert_equal "1", subject.day
  end

  def test_max_temp
    assert_equal "88", subject.max_temp
  end

  def test_min_temp
    assert_equal "59", subject.min_temp
  end

  private

  def subject
    WeatherStat.new(%w(1 88 59 74 53.8 0.00 F 280 9.6 270 17 1.6 93 23 1004.5))
  end
end
