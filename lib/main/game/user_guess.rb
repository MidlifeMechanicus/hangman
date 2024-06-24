module UserGuess
  def user_guess
    guess_valid = false
    while guess_valid == false
     puts "\nPlease enter the letter you wish to guess.\
     \nAlternatively, enter 'save' to save this game.\
     \nWARNING: Saving this game will overwrite previously saved games!"
     guess = gets.chomp.downcase
     if guess == "save"
      save_game
      puts "\nThis game has been saved."
     elsif guess.length == 1 && guess.count("a-z") > 0
      guess_valid = true
     else
      puts "\nThat is not a valid selection."
     end
    end
    puts guess

    if hidden_word.include?(guess)
      for i in 0..hidden_word.length
        if hidden_word[i] == guess
          guess_word[i] = guess
        end
      end
      puts guess_word.join
    else
      self.wrong_guesses += 1
      p self.wrong_guesses
      case wrong_guesses
      when 1
        hangman[0] = "O"
      when 2
        hangman[1] = "|"
      when 3
        hangman[2] = "/"
      when 4
        hangman[3] = "\\"
      when 5
        hangman[4] = "/"
      when 6
        hangman[5] = "\\"
      end
      puts "\nSorry, the hidden word does not include the letter #{guess}!"
    end
    show_board
  end
end