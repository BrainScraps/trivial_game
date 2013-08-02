require 'spec_helper'

describe Question do
  it "gets created" do
    question = Question.create(:content => "What color is the sun?")

    expect(Question.all).to include(question)
  end

  it "needs content" do
    question = Question.create()

    expect(Question.all).not_to include(question)
  end

  it "has answers" do
    question = Question.create(:content => "What color is the sun?")

    answer = question.answers.create(:content => "yellow", :is_correct => true)
    expect(Question.last.answers).to include(answer)
  end

end
