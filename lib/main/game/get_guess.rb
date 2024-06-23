module GetGuess
  def get_guess
    guess_valid = false
    while guess_valid == false
     puts "\nPlease enter the letter you wish to guess."
     guess = gets.chomp.downcase
     if guess.length == 1 && guess.count("a-z") > 0
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
      p wrong_guesses
      puts "\nSorry, the hidden word does not include letter #{guess}!"
    end
    show_board
  end
end