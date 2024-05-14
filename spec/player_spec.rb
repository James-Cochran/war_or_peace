require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'

RSpec.describe Player do

    it "has a name" do
        player = Player.new("Clarisa", "deck")
        expect(player.name).to eq ("Clarisa")
    end

    it "player has a deck" do
        player = Player.new("name", "deck_1")
        expect(player.deck).to eq ("deck_1")
    end

end

