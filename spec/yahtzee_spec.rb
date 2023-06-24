require_relative '../lib/yahtzee'

describe Yahtzee do 
    it "displays dice [arr] after roll is called" do 
        game = Yahtzee.new
        allow(game).to receive(:roll).and_return([1, 1, 1, 1, 1])
        expect( game.roll ).to eq [1,1,1,1,1]
    end

    it "moves dice to hand after a roll" do 
        game = Yahtzee.new
        allow(game).to receive(:roll).and_return([5, 5, 5, 2, 1])
        expect(game.hold('abc')).to eq "You've grabbed: 5, 5, 5"
    end
end