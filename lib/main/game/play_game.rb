module PlayGame
  def play_game
    while wrong_guesses < 6
      user_guess
      break if guess_word == hidden_word
    end
    if guess_word == hidden_word
      puts "\nCongratulations! You win!"
    else
      puts "Oops! Game over! You lose!"
    end
  end
end
