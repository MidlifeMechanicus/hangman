require_relative "main/game"
require "yaml"
require "json"

# game is object - everything must be stored in the objec so that it can be saved
# save/load game

def save_game(game)
  File.open("saved_game.yml", "w"){|file| file.write(game.to_yaml)}
end

def load_game
  loaded_game = YAML.load(File.read("saved_game.yml"))
  p loaded_game
end

if File.exist?("saved_games.yml")
  valid_game_choice = false

  while valid_game_choice == false do
    puts "\nYou have a saved game. \nWould you like to continue or start a new game?\nPlease enter 'new' or 'continue'."
    game_choice = gets.chomp.downcase
    if game_choice == "new"
      valid_game_choice = true
      puts "You have chosen new."
      new_game = Game.new
      new_game.play_game
    elsif game_choice == "continue"
      valid_game_choice = true
      puts "You have chosen continue."
      loaded_game = YAML.safe_load_file(
        "saved_game.yml",
        permitted_classes: [Game, Symbol]
      )
      loaded_game.play_game
    else
      puts "That is not a valid selection. Please try again."
    end
  end
else
  new_game = Game.new
  new_game.play_game
end




# test = Game.new

# loaded_game = YAML::load(File.read("saved_game.yml"))

loaded_game = YAML.load_file(
  "saved_game.yml",
  permitted_classes: [Game, Symbol]
)
# 
# 
# p loaded_game
# 
# loaded_game.play_game

# 
# jsave test

# save_game(test)

# load_game

 
# test.play_game

# test_save = YAML::dump(test)

# puts test_save

# puts YAML::load(test_save)
