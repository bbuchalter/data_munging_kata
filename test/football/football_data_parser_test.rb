require_relative '../test_helper'
require_relative "../../lib/football/football_data_parser"
require_relative "../../lib/football/football_stat"

class FootballDataParserTest < Test::Unit::TestCase
  def test_build_data_structure
    assert_equal 20, subject.build_data_structure.length
    assert_equal "Arsenal", subject.build_data_structure[0].team
  end

  private

  def subject
    FootballDataParser.new(test_file_path, data_structure_class)
  end

  def test_file_path
    "#{current_path}/football.dat"
  end

  def current_path
    File.dirname(__FILE__)
  end

  def data_structure_class
    FootballStat
  end
end