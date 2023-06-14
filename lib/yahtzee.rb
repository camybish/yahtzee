class Turn 
    def initialize
        @roll = 0
        @dice = []
        @random = rand(1..6)
    end 

    def roll
        # 

        return @dice
    end

    def start
        return @dice
    end
end

rolly = Turn.new

puts rolly.roll