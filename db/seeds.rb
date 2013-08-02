# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


question1 = Question.create(:content => "In what year was the classic Nintendo game 'The Legend of Zelda' first released?")

Answer.create(:content => "1986", :is_correct => true, :question_id => question1.id)
Answer.create(:content => "1996", :is_correct => false, :question_id => question1.id)
Answer.create(:content => "1990", :is_correct => false, :question_id => question1.id)
Answer.create(:content => "1992", :is_correct => false, :question_id => question1.id)

question2 = Question.create(:content => "What animal is the closest living relative of the T-Rex?")

Answer.create(:content => "Chicken", :is_correct => true, :question_id => question2.id)
Answer.create(:content => "Jane Sternbach", :is_correct => false, :question_id => question2.id)
Answer.create(:content => "Platypus", :is_correct => false, :question_id => question2.id)
Answer.create(:content => "Komodo Dragon", :is_correct => false, :question_id => question2.id)

question3 = Question.create(:content => "Nomophobia is the fear of:")

Answer.create(:content => "Being without your cell phone", :is_correct => true, :question_id => question3.id)
Answer.create(:content => "Never being afraid", :is_correct => false, :question_id => question3.id)
Answer.create(:content => "Gnomes", :is_correct => false, :question_id => question3.id)
Answer.create(:content => "Dying in a bathroom stall", :is_correct => false, :question_id => question3.id)