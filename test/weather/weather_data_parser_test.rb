require_relative "../test_helper"
require_relative "../../lib/weather/weather_stat"
require_relative "../../lib/weather/weather_data_parser"

class WeatherDataParserTest < Test::Unit::TestCase
  def test_build_data_structure
    assert_equal 30, subject.build_data_structure.length
    assert_equal "1", subject.build_data_structure[0].day
  end

  private

  def subject
    WeatherDataParser.new(test_file_path, data_structure_class)
  end

  def test_file_path
    "#{current_path}/weather.dat"
  end

  def current_path
    File.dirname(__FILE__)
  end

  def data_structure_class
    WeatherStat
  end
end