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

    case wrong_guesses
    when 0
      hangman = [" ", " ", " ", " ", " ", " "]
    when 1
      hangman = ["O", " ", " ", " ", " ", " "]
    when 2
      hangman = ["O", "|", " ", " ", " ", " "]
    when 3
      hangman = ["O", "|", "/", " ", " ", " "]
    when 4
      hangman = ["O", "|", "/", "\\", " ", " "]
    when 5
      hangman = ["O", "|", "/", "\\", "/", " "]
    when 6
      hangman = ["O", "|", "/", "\\", "/", "\\"]
    end

# ["O", "|", "/", "\\", "/", "\\"]
    puts board
  end
end
