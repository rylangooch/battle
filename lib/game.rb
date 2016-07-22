class Game

attr_reader :player_1, :player_2, :players, :game_over

 def initialize(player_1, player_2)
   @player_1 = player_1
   @player_2 = player_2
   @players = [player_2, player_1]
 end


 def attack
   @players.first.receive_damage
   dead?
   @players.rotate!
 end

 def self.create(player_1, player_2)
   @game = Game.new(player_1, player_2)
 end

 def self.instance
   @game
 end

 private

 def dead?
   @game_over = true if @players.first.hit_points <= 0
 end

end
