class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    production = @speed * 221.0
      if @speed <= 4
      production
    elsif @speed <= 8
      production * 0.90
    elsif @speed == 9
      production * 0.80
    else
      production * 0.77
    end
  end

  def working_items_per_minute
  efficiency =
      if @speed <= 4
        1.0
      elsif @speed <= 8
        0.9
      elsif @speed == 9
        0.8
      else
        0.77
      end
  
    (production_rate_per_hour / 60).to_i
  end
end


AssemblyLine.new(6).production_rate_per_hour
AssemblyLine.new(6).working_items_per_minute
