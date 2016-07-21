require 'player'

describe Player do
  subject(:player_1) { Player.new('player_1') }
  subject(:player_2) { Player.new('player_2') }

  describe '#name' do
    it 'returns the name' do
      expect(player_2.name).to eq 'player_2'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_2.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player_2.receive_damage }.to change { player_2.hit_points }.by(-10)
    end
  end
 end
