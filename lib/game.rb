class Game

attr_reader :player_1, :player_2, :players

   def initialize(player_1, player_2)
     @player_1 = player_1
     @player_2 = player_2
     @players = [player_2, player_1]
   end


 def attack
   @players.first.receive_damage
   @players.rotate!
 end

end
