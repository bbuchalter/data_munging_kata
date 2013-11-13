require_relative '../test_helper'
require_relative "../../lib/football/football_data_parser"
require_relative "../../lib/football/football_stat"
require_relative "../../lib/football/football_stats"
require_relative "../../lib/spread_calc/spread_calc"

class FootballStatsTest < Test::Unit::TestCase
  def test_team_with_minimum_scoring_spread
    assert_equal "Leicester", subject.team_with_minimum_scoring_spread
  end

  private

  def subject
    FootballStats.new(team_data, spread_calc_class)
  end

  def team_data
    parser.build_data_structure
  end

  def parser
    FootballDataParser.new(test_file_path, data_structure_class)
  end

  def data_structure_class
    FootballStat
  end

  def spread_calc_class
    SpreadCalc
  end

  def test_file_path
    "#{current_path}/football.dat"
  end

  def current_path
    File.dirname(__FILE__)
  end
end