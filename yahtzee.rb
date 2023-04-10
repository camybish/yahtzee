@die = {
:A => 1 + rand(5),
:B => 1 + rand(5),
:C => 1 + rand(5),
:D => 1 + rand(5),
:E => 1 + rand(5)
}

@counter = 0
@rolled_dice = []
@hand = []

def play
    puts "'roll' the dice ('hold some' or 'hold all' after the first roll)"
    input = gets.chomp
    if @counter < 3
        if input == "roll"
            roll
        elsif input == "hold some" && @counter > 0
            hold
        elsif input == "hold all" && @counter > 0
            log_score
        elsif input == "quit"
            exit
        end
    end
end

def roll
    @die.each_value { |dice| @rolled_dice << dice }
    puts @rolled_dice.join(", ")
    @counter += 1
    puts "A, B, C, D, E"
    play
end

def hold
    puts "Type in the dice you want to hold"
    input = gets.strip
    selection = input.split("")
    dice_key = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4}
    selection.each do |x|
        @hand << @rolled_dice[dice_key[x].to_i]
    end 
    puts @hand.inspect
#    @rolled_dice.map do |die|
#       if 
#       @hand << selection[die] 
#    end
end

def log_score
    puts "Feature coming soon"
end

def score 
    puts "Feature coming soon"
end

puts "Let's play Yahtzee"
play 

# 3 rolls per turn
# --- scoreboard ---
# aces  = count 1s
#       = count 2s
#       = count 3s
#       = count 4s
#       = count 5s
#       = count 6s
# choice = bank score -> any
# four of a kind = bank score -> 4 numbers matching 
# full house = bank score -> 2 and 3 matching 
# small straight = bank score -> 4 in a row
# large straight = bank score -> 5 in a row
# yahtzee! = bank score -> 5 matching
# 
# next steps
# - show a fresh set of dice
# - clear the old dice
# - hold the dice