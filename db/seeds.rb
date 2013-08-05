Question.delete_all
Answer.delete_all

question1 = Question.create(:content => "What is Jane's favorite gem?")

question1.answers.create(:content => "Ruby", :is_correct => false)
question1.answers.create(:content => "Pry", :is_correct => true)
question1.answers.create(:content => "Diamond", :is_correct => false)
question1.answers.create(:content => "Can you increase the font size?", :is_correct => false)

question2 = Question.create(:content => "Our class was most upset by the loss of:")

question2.answers.create(:content => "The old classroom", :is_correct => false)
question2.answers.create(:content => "Sleep", :is_correct => false)
question2.answers.create(:content => "Snacks", :is_correct => true)
question2.answers.create(:content => "Those lame people that quit after two days", :is_correct => false)

question3 = Question.create(:content => "What is the name of Dwayne's dog?")

question3.answers.create(:content => "Spot", :is_correct => false)
question3.answers.create(:content => "Sport", :is_correct => true)
question3.answers.create(:content => "Sea Dramas", :is_correct => false)
question3.answers.create(:content => "Dwayne has a cat", :is_correct => false)

question4 = Question.create(:content => "In a deck of cards, who has a hashstache:")

question4.answers.create(:content => "Queen", :is_correct => false)
question4.answers.create(:content => "Jack", :is_correct => false)
question4.answers.create(:content => "Ace", :is_correct => false)
question4.answers.create(:content => "King", :is_correct => true)

question5 = Question.create(:content => "90% of your dreams are about:")

question5.answers.create(:content => "Insecurity", :is_correct => false)
question5.answers.create(:content => "Adventure", :is_correct => false)
question5.answers.create(:content => "Sex", :is_correct => true)
question5.answers.create(:content => "Ruby on Rails", :is_correct => false)

question6 = Question.create(:content => "The character most closely associated with Sumeet Jain is:")

question6.answers.create(:content => "Khal Drogo", :is_correct => false)
question6.answers.create(:content => "Aladdin", :is_correct => false)
question6.answers.create(:content => "Chuck Norris", :is_correct => false)
question6.answers.create(:content => "That's outside the scope of this lesson", :is_correct => true)

question7 = Question.create(:content => "How do I, Hashstachtocat, get to the playground:")

question7.answers.create(:content => "by car", :is_correct => false)
question7.answers.create(:content => "by boat", :is_correct => false)
question7.answers.create(:content => "by bus", :is_correct => false)
question7.answers.create(:content => "by HashRocket", :is_correct => true)

question8 = Question.create(:content => "CSS is:")

question8.answers.create(:content => "Used to style websites", :is_correct => true)
question8.answers.create(:content => "A programming language based on C", :is_correct => false)
question8.answers.create(:content => "A California State School", :is_correct => false)
question8.answers.create(:content => "Bullshit", :is_correct => false)