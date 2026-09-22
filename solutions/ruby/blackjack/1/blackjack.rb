module Blackjack
  def self.parse_card(card)
    nuevo =card.upcase
    case 
      when nuevo =='ACE'
      11
      when nuevo =='TWO'
      2
      when nuevo == 'THREE'
      3
      when nuevo =='FOUR'
      4
      when nuevo =='FIVE'
      5
      when nuevo =='SIX'
      6
      when nuevo =='SEVEN'
      7
      when nuevo =='EIGHT'
      8
      when nuevo =='NINE'
      9
      when ['TEN','JACK','QUEEN','KING'].include?(nuevo)
      10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    carta1 = self.parse_card(card1)
    carta2 = self.parse_card(card2)
     total =  carta1 + carta2
  case total
    when 4,5,6,7,8,9,10,11
    'low'
    when 12,13,14,15,16
    'mid'
    when 17,18,19,20
    'high'
    when 21
    'blackjack'
    when 22
    'Separar'
  end 
  end

  def self.first_turn(card1, card2, dealer_card)
    value = self.card_range(card1, card2)

    valuedealr = self.parse_card(dealer_card)
    case 
      when value == 'blackjack' && (valuedealr != 11 && valuedealr != 10)
      'W'
      when value == 'blackjack' && (valuedealr == 11 || valuedealr == 10)
      'S'  
      when  value =='low'
      'H'
      when value =='mid' && valuedealr >= 7
      'H'
      when value =='mid' && valuedealr <= 7
      'S'
      when value == 'high' 
      'S'
      when value =='Separar'
      'P'
    end

  end
end
