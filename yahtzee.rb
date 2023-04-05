@die = {
:dice1 => 1 + rand(5),
:dice2 => 1 + rand(5),
:dice3 => 1 + rand(5),
:dice4 => 1 + rand(5),
:dice5 => 1 + rand(5)
}

@counter = 0
@rolled_dice = []

def play
    puts "Let's play Yahtzee"
    puts "'roll' the dice"
    input = gets.chomp
    if @counter < 3
        if input == "roll"
            roll
        elsif input == "hold some"
            hold
        elsif input == "hold all"
            hold 
        elsif input == "quit"
            exit
        end
    end
end

def roll
    @die.each_value { |dice| @rolled_dice << dice }
    puts @rolled_dice.join(", ")
    @counter += 1
    play
end

def hold
    puts "Feature coming soon"
end

def score 
    
end

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