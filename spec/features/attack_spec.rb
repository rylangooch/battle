require 'spec_helper'
require '../battle/app.rb'

feature 'attacking' do
  scenario 'on attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'player_1 attacked player_2'
    expect(page).not_to have_content 'player_2 100HP'
    expect(page).to have_content 'player_2: 90HP'
  end

  scenario 'hp reduced after attack' do
    sign_in_and_play
    click_link 'Attack'

    expect(page).to have_content '90HP'
  end
end
