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

  scenario "sidebar shows more event details on click", js: true, focus: true do
    visit root_path
    expect(page).to have_no_selector('aside')
    event = Event.all[1]
    find(".event[id='#{event.event_id}']").click
    expect(page).to have_css(".is-highlighted[id='#{event.event_id}']")
    expect(page).not_to have_css('aside.hidden')
    within('aside') do
      expect(page).to have_content(event.event_id)
      # todo - add other expected content
    end
  end

  scenario "selecting events properly highlights and un-highlights rows"
end
