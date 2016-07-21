require 'spec_helper'
require '../battle/app.rb'

feature 'View hit points'do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'player_2: 100HP'
  end
end
