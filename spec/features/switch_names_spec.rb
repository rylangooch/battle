require 'spec_helper'
require '../battle/app.rb'

feature 'switching players' do
  scenario 'switch to player 2 after first attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'player_1 attacked player_2'
    click_link 'End battle'
    expect(page).to have_content 'player_1 vs. player_2'
    expect(page).to have_content 'player_1: 100HP'
    click_link 'Attack'
    expect(page).to have_content 'player_2 attacked player_1'
    expect(page).not_to have_content 'player_1 100HP'
    expect(page).to have_content 'player_1: 90HP'
  end
end
