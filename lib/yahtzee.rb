class Yahtzee 
    def initialize
        @roll = 0
        @dice = Array.new(5) { rand(1..6) }
        @hand = @dice
    end 

    def roll
        # include a|b|c|d|e selection
        @dice.each do |dice|
            @hand << dice
        end
        return @dice
    end

    def hold(choice)
        hold = []
        choice_arr = choice.split("")
        if choice_arr.length > 5 || choice_arr.each { |d| d =~ /([a-e][A-E])/}
            choice_arr.each do |letter|
                case letter
                when "A" || "a"
                    hold << @hand
            end
            return @hand
        elsif choice == nil
            return true
        end
    end

    def start
        return @dice
    end
end