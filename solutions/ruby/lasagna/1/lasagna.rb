class Lasagna

  EXPECTED_MINUTES_IN_OVEN = 40
  TIME_OF_LAYERS = 2
  def remaining_minutes_in_oven(actual_minutes_in_oven)
   EXPECTED_MINUTES_IN_OVEN- actual_minutes_in_oven   
  end
  
  def preparation_time_in_minutes(layers)
    debug "The Values is #{layers}"
    layers * TIME_OF_LAYERS
  end
  
  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end


 lasagna = Lasagna.new
 lasagna.remaining_minutes_in_oven(25)
 lasagna.preparation_time_in_minutes(30)
 lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)
