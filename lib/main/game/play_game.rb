module PlayGame
  def play_game
    while self.wrong_guesses < 6 do
      self.user_guess
      if guess_word == hidden_word
        break
      end
    end
    if guess_word == hidden_word
      puts "\nCongratulations! You win!"
    else
      puts "Oops! Game over! You lose!"
    end
  end
end