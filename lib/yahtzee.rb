class Yahtzee 
    def initialize
        @roll = 0
        @dice = Array.new(5) { rand(1..6) }
        @hand = @dice
    end 

    def roll
        # include a|b|c|d|e selection
        # @dice.each do |dice|
        #     @hand << dice
        # end
        return @hand.inspect
    end

    def hold(choice)
        hold = []
        choice_arr = choice.split("")
        if choice_arr.length > 5 || choice_arr.each { |d| d =~ /([a-e][A-E])/}
            choice_arr.each do |letter|
                case letter
                when "A" || "a"
                    return "a"
                    # hold.push(@hand[0])
                when "B" || "b"
                    return "b"
                    # hold.push(@hand[1])
                when "C" || "c"
                    return "c"
                    # hold.push(@hand[2])
                when "D" || "d"
                    return "d"
                    # hold.push(@hand[3])
                when "E" || "e"
                    return "e"
                    # hold.push(@hand[4])
                end
            end
            return hold.inspect
        elsif choice == "all"
            return true
        end
    end
end

game = Yahtzee.new

puts game.roll
puts game.hold("ab")