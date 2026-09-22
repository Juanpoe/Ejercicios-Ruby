module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE
  def self.get_identifier(city)
   city.upcase[0,4].to_sym
  end

  def self.get_terminal(ship_identifier)
    value = ship_identifier.to_s
    value.gsub(":","").gsub("(","").gsub(")","")
    if value[0,3] == 'OIL' or value[0,3] == 'GAS'
       "A".to_sym
    else
       "B".to_sym
    end
  end
end
