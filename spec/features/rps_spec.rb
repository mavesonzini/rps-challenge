require './app'
require 'spec_helper'

feature "play rock/paper/scissors" do

  before do
    visit '/'
    fill_in "username", :with => "Veronica"
    click_button "Start!"
  end

  scenario "the user can see 3 buttons with options" do
    expect(page).to have_button("Rock")
  end

end
