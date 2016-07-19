require 'spec_helper'
require '../battle/app.rb'

feature 'attacking' do
  scenario 'on attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Will attacked Mike'
  end
end
