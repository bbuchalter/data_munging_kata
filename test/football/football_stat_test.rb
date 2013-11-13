require_relative '../test_helper'
require_relative "../../lib/football/football_stat"

class FootballStatTest < Test::Unit::TestCase
  def test_team
    assert_equal "Arsenal", subject.team
  end

  def test_scored_against
    assert_equal 36, subject.scored_against
  end

  def test_scored
    assert_equal 79, subject.scored
  end

  private

  def subject
    FootballStat.new(%w(1. Arsenal 38 26 9 3 79 - 36 87))
  end
end
