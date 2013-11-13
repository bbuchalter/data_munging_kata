require_relative "../../lib/parser/base_parser"

class WeatherDataParser < BaseParser
  private

  def expected_header
    "Dy MxT   MnT   AvT   HDDay  AvDP 1HrP TPcpn WxType PDir AvSp Dir MxS SkyC MxR MnR AvSLP"
  end

  def valid_data(data)
    (1..31).include?(data[0].to_i)
  end
end