require_relative "main/game"
require "yaml"

# def save_game(game)
  # File.open("saved_game.yml", "w"){|file| file.write(game.to_yaml)}
# end

def load_game
  loaded_game = YAML.load(File.read("saved_game.yml"))
  p loaded_game
end

if File.exist?("saved_game.yml")
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
      loaded_game.show_board
      loaded_game.play_game
    else
      puts "That is not a valid selection. Please try again."
    end
  end
else
  new_game = Game.new
  new_game.play_game
end