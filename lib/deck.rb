require './lib/card'
class Deck
    attr_reader :cards
    attr_writer :deck
    
    def initialize (cards)
        @cards = cards
    end
   
    def rank_of_cards_at (index)
        cards[index].rank
    end
    
    def high_ranking_cards 
        high_ranking_cards = @cards.select{ | card| card.rank > 10}
    end
    
    def percent_high_ranking
        high_ranking_count = high_ranking_cards.high_ranking_count
        total_count = @cards.total_count
        percentage = (high_ranking_count / total_count) * 100
    end
   
    def remove_card
        @cards.shift
    end
  
    def add_card
        @cards.push
    end
end

