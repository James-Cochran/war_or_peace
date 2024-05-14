require 'rspec'
require './lib/card'
require './lib/deck'

RSpec.describe Deck do

    it "has cards" do
        card1 = Card.new(:diamond, "Queen", 12)
        card2 = Card.new(:spade, "3", 3)
        card3 = Card.new(:heart, "Ace", 14)
        deck = Deck.new([card1, card2, card3])
        expect(deck.cards).to eq([card1, card2, card3])
    end

    it "returns high ranking cards" do
        card1 = Card.new(:diamond, "Queen", 12)
        card2 = Card.new(:spade, "3", 3)
        card3 = Card.new(:heart, "Ace", 14)
        deck = Deck.new([card1, card2, card3])
        expect(deck.high_ranking_cards).to eq([card1, card3])
    end

    it "removes the top card" do
        card1 = Card.new(:diamond, "Queen", 12)
        card2 = Card.new(:spade, "3", 3)
        card3 = Card.new(:heart, "Ace", 14)
        deck = Deck.new([card1, card2, card3])
        deck.remove_card
        expect(deck.cards).to eq([card2, card3])
    end

    it "adds a card to the bottom" do
        card1 = Card.new(:diamond, "Queen", 12)
        card2 = Card.new(:spade, "3", 3)
        card3 = Card.new(:heart, "Ace", 14)
        deck = Deck.new([card1, card2, card3])
        added_card = Card.new(:club, "5", 5)
        deck.add_card(added_card)
        expect(deck.cards.last).to eq(added_card)
    end
end

