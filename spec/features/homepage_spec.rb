require 'spec_helper'

describe "homepage", js: true do

  before do
    visit root_path
    click_link "Start New Game"
  end

  it "activates player turn on key press" do
    keydown("A")
    expect(page).to have_css('background_color', 'red')
  end

  it "starts new round after incorrect answer" do
    keydown("A")
    click_div "#A2"

    expect(page).to have_css('background_color', 'default')
  end

  it "increases players score on correct answer" do
    keydown("A")
    click_div "A1"
    old_score = p1_score
    expect(current_player_score).to_not be_equal(old_score)
  end

  it "increases the question counter when new question is loaded" do
    keydown("A")
    click_div "A1"
    old_question_number = session_question_number
    expect(current_question_number).to_not be_equal(old_question_number)
  end

end