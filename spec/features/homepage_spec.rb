require 'spec_helper'

describe "homepage", js: true do

  before do
    visit root_path
  end

  it "activates player turn on key press" do
    find("#element_id").native.send_keys :tab
  end

  it "starts new round after incorrect answer" do
    select('San Francisco', :from => 'origin_airport_pulldown_id')
    click_link "Submit origin"

    expect(page).to have_css('destination_airport_pulldown_id')
  end

  it "increases players score on correct answer" do
    select('San Francisco', :from => 'origin_airport_pulldown_id')
    click_link "Submit origin"
    select('Philadelphia', :from => 'destination_airport_pulldown_id')
    click_link "Submit destination"

    expect(page).to have_css('departure_times_pulldown_id')
  end

  it "increases the question counter when new question is loaded" do
    select('San Francisco', :from => 'origin_airport_pulldown_id')
    click_link "Submit origin"
    select('Philadelphia', :from => 'destination_airport_pulldown_id')
    click_link "Submit destination"
    select("2013/08/01 18:00:00")
    click_link "View flight"

    expect(page).to have_css('seating_chart_id')
  end

end