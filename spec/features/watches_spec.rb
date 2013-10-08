require 'spec_helper'

feature "feature specs for: GET /" do
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

  scenario "sidebar shows more event details on click", js: true do
    visit root_path
    expect(page).to have_no_selector('aside')
    event = Event.all[1]
    find(".event[id='#{event.event_id}']").click
    expect(page).to have_css(".selected-row[id='#{event.event_id}']")
    expect(page).not_to have_css('aside.hidden')
    within('aside') do
      expect(page).to have_content(event.event_id)
      expect(page).to have_content(event.thread_name)
      expect(page).to have_content(event.caller_filename)
    end
  end

  scenario "number of events shown can be modified on the fly", js: true do
    15.times { create(:event) }
    visit root_path
    expect(page).to have_field('num_events', with: "12")
    fill_in 'num_events', with: "20"
    page.execute_script("$('input[name=\"num_events\"]').trigger(\"blur\")")
    expect(page).to have_field('num_events', with: "20")
    expect(page).to have_css('.event', count: 20)
    expect(page).to have_no_selector('aside')
  end

  scenario "log can be filtered based on log_level", js: true, focus: true do
    20.times { create(:event, level_string: "ERROR") }
    2.times { create(:event, level_string: "WARN") }
    2.times { create(:event, level_string: "INFO") }
    visit root_path
    expect(page).to have_css('.event', text: 'WARN', count: 2)
    select('ERROR', visible: false)
    expect(page).to have_no_css('.event', text: 'WARN')
    select('WARN', visible: false)
    expect(page).to have_css('.event', text: 'WARN', count: 2)
    expect(page).to have_css('.event', text: 'ERROR')
    expect(page).to have_no_css('.event', text: 'INFO')
  end
end
