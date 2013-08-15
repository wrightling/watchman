require 'spec_helper'

feature "GET /" do
  scenario "Page title is 'Watchman'" do
    visit root_path
    expect(page).to have_title "Watchman"
  end

  scenario "events show in page body" do
    visit root_path
    expect(page).to have_content "SCHEDULABLE: calling"
  end
end
