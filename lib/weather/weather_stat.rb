class WeatherStat
  def initialize(data)
    @data = data
  end

  def day
    data[0]
  end

  def max_temp
    data[1]
  end

  def min_temp
    data[2]
  end

  private

  attr_reader :data
end