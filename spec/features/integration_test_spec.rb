require 'spec_helper'

describe "integration test", js: true do
  before do
    visit root_path
    click_link "#new_game"
  end

  it "Question loads at the beginning of round" do

   keydown("A")
   click_div "#A2"

   expect('#question').to have_content('question')
  end

  it "Styling changes when incorrect answer is given integration test" do

    keydown("A")
    click_div "#A2"

    expect('#game_window').to_not have_css('.player1')
  end

  it "should know when a player answers a question incorrectly." do


    keydown("A")
    click_div "#A1"

    expect('#speech_box').to_not have_content('wrong')
  end

  it "should know when a player answers a question CORRECTLY" do


    keydown("A")
    click_div "#A1"

    expect('#speech_box').to_not have_content('correct')

  end


  it "should start a game" do

    expect('#question').to have_content('question')

  end

  it "should change the background color of the div with #game_window after a buzzer click" do

    keydown("A")

    expect('#game_window').to have_css('.player1')

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