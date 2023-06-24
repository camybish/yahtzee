class Yahtzee 
    def initialize
        @roll = 0
        @hand = {}
        @dice = nil
        ('A'..'E').each do |letter|
          @dice[letter] = rand(1..6)
        end
    end 

    def roll
        # include a|b|c|d|e selection
        @dice = @hand
        return @dice
    end

    def hold(choice)

        return @hand

    end

    def start
        return @dice
    end
end