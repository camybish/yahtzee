class Yahtzee 
    def initialize
        @roll = 0
        @dice_num = 5
        @dice = Array.new(@dice_num) { rand(1..6) }
        @hand = @dice
        @turn = 3
        @final_hand = []
    end 

    def roll
        # include a|b|c|d|e selection
        # @dice.each do |dice|
        #     @hand << dice
        # end
        @turn = @turn - 1
        if @turn == 0 
            return "Final Score: " + @final_hand.to_s + rand(1..6).to_s
        end

        return @hand.inspect
    end

    def hold(choice)
        hold = []
        arr = choice.split("")
        if arr.include?("e" || "E")
            hold << @hand[4]
            @hand.pop[4]
            @dice_num = @dice_num - 1
        end
        if arr.include?("d" || "D")
            hold << @hand[3]
            @hand.pop[3]
            @dice_num = @dice_num - 1
        end
        if arr.include?("c" || "C")
            hold << @hand[2]
            @hand.pop[2]
            @dice_num = @dice_num - 1
        end
        if arr.include?("b" || "B")
            hold << @hand[1]
            @hand.pop[1]
            @dice_num = @dice_num - 1
        end
        if arr.include?("a" || "A")
            hold << @hand[0]
            @hand.pop[0]
            @dice_num = @dice_num - 1
        end

        @final_hand << hold
        
        return hold.inspect
    end
end


game = Yahtzee.new

puts game.roll + "  .roll"
puts game.hold('ae') + "  .hold('ae')"
puts game.roll + "  .roll"
puts game.hold('bc') + "  .hold('bc')"
puts game.roll + "  .roll"