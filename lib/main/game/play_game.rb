module PlayGame
  def play_game
    while self.wrong_guesses < 7 do
      self.user_guess
    end
  end
end