# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


question1 = Question.create(:content => "In what year was the classic Nintendo game 'The Legend of Zelda' first released?")

question1.answers.create(:content => "1986", :is_correct => true)
question1.answers.create(:content => "1996", :is_correct => false)
question1.answers.create(:content => "1990", :is_correct => false)
question1.answers.create(:content => "1992", :is_correct => false)

question2 = Question.create(:content => "What animal is the closest living relative of the T-Rex?")

question2.answers.create(:content => "Chicken", :is_correct => true)
question2.answers.create(:content => "Armadillo", :is_correct => false)
question2.answers.create(:content => "Platypus", :is_correct => false)
question2.answers.create(:content => "Komodo Dragon", :is_correct => false)

question3 = Question.create(:content => "Nomophobia is the fear of:")

question3.answers.create(:content => "Being without your cell phone", :is_correct => true)
question3.answers.create(:content => "Never being afraid", :is_correct => false)
question3.answers.create(:content => "Gnomes", :is_correct => false)
question3.answers.create(:content => "Dying in a bathroom stall", :is_correct => false)

question4 = Question.create(:content => "In a deck of cards, who has a hashstache:")

question4.answers.create(:content => "Queen", :is_correct => false)
question4.answers.create(:content => "Jack", :is_correct => false)
question4.answers.create(:content => "Ace", :is_correct => false)
question4.answers.create(:content => "King", :is_correct => true)

question5 = Question.create(:content => "What has the fewest calories:")

question5.answers.create(:content => "Orange Juice", :is_correct => false)
question5.answers.create(:content => "Skim Milk", :is_correct => false)
question5.answers.create(:content => "Guinness Stout", :is_correct => true)
question5.answers.create(:content => "Apple Juice", :is_correct => false)

question6 = Question.create(:content => "What is the last name of David, the creator of Rails:")

question6.answers.create(:content => "Heinemeier", :is_correct => false)
question6.answers.create(:content => "Hansson", :is_correct => true)
question6.answers.create(:content => "Bates", :is_correct => false)
question6.answers.create(:content => "AndGoliath", :is_correct => false)

question7 = Question.create(:content => "How do I, Hashstachtocat, get to the playground:")

question7.answers.create(:content => "by car", :is_correct => false)
question7.answers.create(:content => "by boat", :is_correct => false)
question7.answers.create(:content => "by bus", :is_correct => false)
question7.answers.create(:content => "by my HashRocket", :is_correct => true)

question8 = Question.create(:content => "What year did Github launch:")

question8.answers.create(:content => "2001", :is_correct => false)
question8.answers.create(:content => "2005", :is_correct => false)
question8.answers.create(:content => "2010", :is_correct => false)
question8.answers.create(:content => "2008", :is_correct => true)


