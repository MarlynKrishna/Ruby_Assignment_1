class Card
    def initialize(name, pin)
      @name = name
      @pin = pin
      @card_number = (111_111..999_999).to_a.sample
    end
     
    def change_pin
      
      puts "What is the new pin?"
      new_pin = gets.chomp.to_i
      
    end
     
    def show_card_num
      "xxx-#{@card_number % 1_000}"
    end
     
end
   
  debit = Card.new("debit", 1234)
  debit.change_pin
 
  p debit.show_card_num 