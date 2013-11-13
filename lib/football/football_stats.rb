class FootballStats
  def initialize(team_data, spread_calc_class)
    @team_data = team_data
    @spread_calc_class = spread_calc_class
  end

  def team_with_minimum_scoring_spread
    spread_calc.minimum.team
  end

  private

  attr_reader :spread_calc_class, :team_data

  def spread_calc
    spread_calc_class.send(:new, spread_data: team_data, max_method: :scored, min_method: :scored_against)
  end
end