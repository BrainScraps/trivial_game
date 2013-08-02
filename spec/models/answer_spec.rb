require 'spec_helper'

describe Answer do
  it "gets created" do
    question = Question.create(:content => "What color is the sun?")
    answer = Answer.create(:content => "yellow", :is_correct => true, :question_id => question.id)

    expect(Answer.all).to include(answer)
  end

  it "needs content" do
    question = Question.create(:content => "What color is the sun?")
    answer = Answer.create()

    expect(Answer.all).not_to include(answer)
  end

  it "needs to be true or false" do
    question = Question.create(:content => "What color is the sun?")
    answer = Answer.create(:content => "yellow", :question_id => question.id)

    expect(Answer.all).not_to include(answer)
  end


  it "needs a question" do
    answer = Answer.create(:content => "yellow", :is_correct => true)
    expect(Answer.all).not_to include(answer)
  end

end
