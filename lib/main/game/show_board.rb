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


# ["O", "|", "/", "\\", "/", "\\"]
    puts board
  end
end
