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

  scenario "event list updates after 5s by way of AJAX request", js: true do
    visit root_path
    expect(page).to have_title "Watchman"
    event = create(:event)
    expect(page).to have_content event.formatted_message
  end
end
