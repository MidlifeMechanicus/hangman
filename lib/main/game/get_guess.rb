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
  end
end