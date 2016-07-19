require 'spec_helper'
require '../battle/app.rb'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Will'
    fill_in :player_2_name, with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content 'Will vs. Mike'
  end
 end

 feature 'View hit points'do
   scenario 'see Player 2 hit points' do
     visit('/')
     fill_in :player_1_name, with: 'Will'
     fill_in :player_2_name, with: 'Mike'
     click_button 'Submit'
     expect(page).to have_content 'Mike: 100HP'
   end
 end
