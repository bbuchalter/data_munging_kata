class WeatherStats
  attr_reader :data

  def initialize(weather_data, spread_calc_class)
    @weather_data = weather_data
    @spread_calc_class = spread_calc_class
  end

  def day_with_minimum_temp_spread
    spread_calc.minimum.day
  end

  private

  attr_reader :weather_data, :spread_calc_class

  def spread_calc
    spread_calc_class.send(:new, spread_data: weather_data, max_method: :max_temp, min_method: :min_temp)
  end

end