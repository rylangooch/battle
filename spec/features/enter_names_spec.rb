require 'spec_helper'
require '../battle/app.rb'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'player_1 vs. player_2'
  end
 end
