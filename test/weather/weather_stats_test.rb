require_relative '../test_helper'
require_relative "../../lib/weather/weather_stats"
require_relative "../../lib/weather/weather_data_parser"
require_relative "../../lib/weather/weather_stat"
require_relative "../../lib/spread_calc/spread_calc"

class WeatherStatsTest < Test::Unit::TestCase
  def test_day_with_minimum_temp_spread
    assert_equal "14", subject.day_with_minimum_temp_spread
  end

  private

  def subject
    WeatherStats.new(weather_data, spread_calc_class)
  end

  def weather_data
    parser.build_data_structure
  end

  def parser
    WeatherDataParser.new(test_file_path, data_structure_class)
  end

  def data_structure_class
    WeatherStat
  end

  def spread_calc_class
    SpreadCalc
  end

  def test_file_path
    "#{current_path}/weather.dat"
  end

  def current_path
    File.dirname(__FILE__)
  end
end