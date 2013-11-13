class FootballStat
  def initialize(team_data)
    @team_data = team_data
  end

  def team
    team_data[1]
  end

  def scored_against
    team_data[8].to_i
  end

  def scored
    team_data[6].to_i
  end

  private

  attr_reader :team_data
end