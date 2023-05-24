@die = {
:A => 1 + rand(5),
:B => 1 + rand(5),
:C => 1 + rand(5),
:D => 1 + rand(5),
:E => 1 + rand(5)
}

@scoring = {
    :ACES => 0, :DEUCES => 0, :THREES => 0, :FOURS => 0, :FIVES => 0,
    :SIXES => 0, :CHOICE => 0, :FOAK => 0, :FH => 0,
    :SS => 0, :LS => 0, :YAHTZEE => 0
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
        elsif input == "score"
            @scoring.values.sum
        else
            puts "Input not valid"
            play
        end
    end
    if @counter == 3 && input == "log"
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
    puts "\nType in the dice you want to hold"
    input = gets.strip
    selection = input.split("")
    dice_key = {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4}
    selection.each do |x|
        @hand << @rolled_dice[dice_key[x].to_i]
    end 
    puts @hand.inspect
    @held_dice -= selection.length
    puts "Turn " + @counter.to_s + "\n"
    play
end

def log_score
    puts "Out of rolls"
    puts @hand.inspect
    puts @rolled_dice.inspect
    final_hand = @hand.concat(@rolled_dice)
    puts final_hand.inspect
    score(final_hand)
end

def score(final_hand)
    puts "Choose where you want to log your score:"
    puts "ACES(1)\nDEUCES(2)\nTHREES(3)\nFOURS(4)\nFIVES(5)\nSIXES(6)\n"
    puts "Choice(c)\nFour of a kind(k)\nFull House(f)\nSmall Straight(s)\nLarge Straight(l)\n"
    puts "YAHTZEE!(y)"
    input = gets.chomp
    case input
    when "1"
        final_score = final_hand.select { |n| n == 1 }.sum
        @scoring[:ACES] = final_score
        puts "score so far:" + @scoring.values.sum.to_s
    end
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