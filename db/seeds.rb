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