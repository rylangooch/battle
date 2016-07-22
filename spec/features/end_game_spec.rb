require 'spec_helper'
require '../battle/app.rb'

feature 'ending a game' do
  scenario 'a player dies' do
    sign_in_and_play
    18.times do |x|
       click_link 'Attack'
       click_link 'End attack'
     end
     click_link 'Attack'
    expect(page).to have_content 'Game over!'
  end
end
