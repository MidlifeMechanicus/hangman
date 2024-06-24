require_relative "game/show_board"
require_relative "game/user_guess"
require_relative "game/play_game"

class Game
  def initialize
    dictionary = File.readlines("google-10000-english-no-swears.txt")
    @hidden_word = dictionary[rand(1..9894)].chomp.chars
    @guess_word = hidden_word.map {|i| i = " _ "}
    @guessed_letters = []
    @wrong_guesses = 0
    @hangman = [" ", " ", " ", " ", " ", " "]
    p hidden_word
    p guess_word
    show_board
  end

  attr_accessor :hidden_word, :guess_word, :guessed_letters, :wrong_guesses, :hangman

  include ShowBoard
  include UserGuess
  include PlayGame
end
