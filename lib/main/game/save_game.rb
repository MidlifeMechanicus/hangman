module SaveGame
  def save_game
    File.write("saved_game.yml", to_yaml)
  end
end
