module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = (1..8)
  FILES = ('A'..'H')
  def self.valid_square?(rank, file)
     if RANKS.include?(rank) and FILES.include?(file)
       true  
     else
       false
     end
  end

  def self.nickname(first_name, last_name)
    nuevo = first_name[0,2].upcase + last_name[-2 ,2].upcase
  end

  def self.move_message(first_name, last_name, square)
    letra=square[0].to_s
    numero = square[1].to_i
     valido = self.valid_square?(numero,letra)
    debug "The value is #{valido}."
    debug "The value is #{numero}."
    debug "The value is #{letra}."
    if valido
    "#{self.nickname(first_name, last_name)} moved to #{square}"
    else
      "#{self.nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
