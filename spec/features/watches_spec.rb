require 'spec_helper'

feature "GET /" do
  before :each do
    5.times { create(:event) }
  end

  scenario "Page title is 'Watchman'" do
    visit root_path
    expect(page).to have_title "Watchman"
  end

  scenario "events show in page body" do
    visit root_path
    expect(page).to have_content Event.first.formatted_message
  end
end
