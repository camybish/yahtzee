@die = {
:A => 1 + rand(5),
:B => 1 + rand(5),
:C => 1 + rand(5),
:D => 1 + rand(5),
:E => 1 + rand(5)
}

@counter = 0
@hand = []
@held_dice = 5
@rolled_dice = []

def play
    puts "'roll' the dice ('hold' or 'hold all' after the first roll)"
    input = gets.chomp
    if @counter < 3
        if input == "roll"
            roll
        elsif input == "hold" && @counter > 0
            hold
        elsif input == "hold all" && @counter > 0
            log_score
        elsif input == "quit"
            exit
        end
    end
    if @counter == 0 && input == "roll"
        log_score
    end
end

def roll
    @rolled_dice = []
    if @held_dice < 5
        @held_dice.times { |x| @rolled_dice << rand(1..6)}
        puts @rolled_dice.join(", ")
    else 
        @die.each_value { |dice| @rolled_dice << dice }
        puts @rolled_dice.join(", ")
    end    
    @counter += 1
    puts "A, B, C, D, E"
    puts "Turn " + @counter.to_s + "\n"
    play
end

def hold
    puts "\n Type in the dice you want to hold"
    input = gets.strip
    selection = input.split("")
    dice_key = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4}
    selection.each do |x|
        @hand << @rolled_dice[dice_key[x].to_i]
    end 
    puts @hand.inspect
    @held_dice -= @hand.length
    puts "Turn " + @counter.to_s + "\n"
    play
end

def log_score
    puts "Out of rolls"
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