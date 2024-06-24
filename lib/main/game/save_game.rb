module SaveGame
  def save_game
    puts "\nWould you like to save this game?\
    \nEnter 'Y' to save, or Enter to continue.\
    \nWARNING: Saving your game will overwrite previously saved games!"
    if gets.chomp.downcase == "y"
      File.open("saved_game.yml", "w"){|file| file.write(self.to_yaml)}
    end
  end
end