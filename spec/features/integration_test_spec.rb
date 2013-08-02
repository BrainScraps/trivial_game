require 'spec_helper'

describe "integration test", js: true do
  before do
    visit root_path
    click_link "#new_game"
  end

  before do
    visit root_path
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


end