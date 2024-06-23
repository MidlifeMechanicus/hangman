require_relative "main/game"

# game is object - everything must be stored in the objec so that it can be saved
# show game-board
# get guesses
# check guss array v word array
# valid input filter (length, alpha char, downcase)
# save/load game

# dictionary = File.readlines("google-10000-english-no-swears.txt")
# 
# hidden_word = dictionary[rand(1..10000)]

test = Game.new

test.get_guess

# board = "\
# \n +---+\
# \n |   |\
# \n |    \
# \n |    \
# \n |    \
# \n |    \
# \n========"

# puts board

# board = <<END
#   +---+
#   |   |
#   |    
#   |    
#   |    
#   |    
#  ========
# END

# puts board

# puts "this is a \\ test string"