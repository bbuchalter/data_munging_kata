require_relative "../../lib/parser/base_parser"

class FootballDataParser < BaseParser
  private

  def valid_data(data)
    data.length == 10
  end

  def expected_header
    "Team            P     W    L   D    F      A     Pts"
  end
end