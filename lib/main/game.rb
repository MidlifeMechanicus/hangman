require_relative "game/show_board"

class Game
  def initialize
    dictionary = File.readlines("google-10000-english-no-swears.txt")
    @hidden_word = dictionary[rand(1..10000)]
    @guess_word
    @guessed_letters = []
    @wrong_guesses = 0
    @hangman = ["O", "|", "/", "\\", "/", "\\"]
    puts hidden_word
    show_board
  end
  attr_accessor :hidden_word, :guess_word, :guessed_letters, :wrong_guesses, :hangman

  include ShowBoard
end
