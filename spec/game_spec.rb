require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe 'player_1' do
    it 'creates the first player' do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe 'player_2' do
    it 'creates the first player' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#attack' do
    context 'both players are alive' do
      it 'damages the player' do
        allow(player_2).to receive(:hit_points).and_return(10)
        expect(player_2).to receive(:receive_damage)
        game.attack
      end
    end
    context 'one player dies' do
      it 'ends the game' do
        allow(player_2).to receive(:receive_damage)
        allow(player_2).to receive(:hit_points).and_return(0)
        game.attack
        expect(game.game_over).to be(true)
      end
    end
  end

end
