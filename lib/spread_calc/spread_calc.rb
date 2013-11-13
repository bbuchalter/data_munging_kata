class SpreadCalc
  def initialize(spread_data: spread_data, max_method: max_method, min_method: min_method)
    @spread_data = spread_data
    @max_method = max_method
    @min_method = min_method
  end

  def minimum
    min_index = 0
    min_spread = calc_spread(spread_data[min_index])

    spread_data.each_with_index do |data, i|
      spread = calc_spread(data)
      if spread < min_spread
        min_index = i
        min_spread = spread
      end
    end

    spread_data[min_index]
  end

  private

  attr_reader :spread_data, :max_method, :min_method

  def calc_spread(data)
    data.send(max_method).to_i - data.send(min_method).to_i
  end
end