module ShowBoard
  def show_board
    board = <<END
  +---+
  |   |
  |   #{hangman[0]} 
  |  #{hangman[2]}#{hangman[1]}#{hangman[3]}  
  |  #{hangman[4]} #{hangman[5]}  
  |    
 ========
END

    # case self.wrong_guesses
    # when 1
      # hangman[0] = "O"
    # when 2
      # hangman[1] = "|"
    # when 3
      # hangman[2] = "/"
    # when 4
      # hangman[3] = "\\"
    # when 5
      # hangman[4] = "/"
    # when 6
      # hangman[5] = "\\"
    # end

# ["O", "|", "/", "\\", "/", "\\"]
    puts board
    puts "\n#{guess_word.join}"
  end
end
