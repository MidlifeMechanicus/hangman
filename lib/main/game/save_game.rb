module SaveGame
  def save_game
    File.open("saved_game.yml", "w"){|file| file.write(self.to_yaml)}
  end
end