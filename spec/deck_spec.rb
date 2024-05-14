require 'rspec'
require './lib/card'
require './lib/deck'

RSpec.describe Deck do

it "exists" do
    expect(@deck).to be_an_instance_of(Deck)
end

it "has cards" do
    expect(deck).to have_cards(cards: cards)
end
end

