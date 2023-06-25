class Yahtzee 
    def initialize
        @roll = 0
        @hand = []
        @dice = [rand(1..6),rand(1..6),rand(1..6),rand(1..6),rand(1..6)]
    end 

    def roll
        # include a|b|c|d|e selection
        return @dice
    end

    def hold(choice)



        return @hand

    end

    def start
        return @dice
    end
end