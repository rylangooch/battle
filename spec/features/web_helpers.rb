def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'player_1'
  fill_in :player_2_name, with: 'player_2'
  click_button 'Submit'
end
