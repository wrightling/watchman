require 'spec_helper'

feature "GET /" do
  scenario "works! (now write some real specs)" do
    visit root_path
    expect(page).to have_content "Watchman"
  end
end
