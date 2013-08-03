class HomeController < ApplicationController
  def index


  	if !session[:round].nil?
  		@round = session[:round]
  		blacklist = session[:blacklist]
  		@scores = session[:scores]
  		@question = Question.all.sample
  		max_questions = Question.count + 1

	  	if blacklist.include?(@question.id)
	  		counter = 0
	  		until (!blacklist.include?(@question.id)) || counter == max_questions
	  			@question = Question.sample
	  			counter += 1
	  		end
  		
	  	end
  	end
  end

  def start_game
  	#when the user clicks the start button, the round is set to 1 START OVER!!!
  	session[:round] = 1

  	#the scoreboard is reset
  	session[:scores] = {p1: 0, p2: 0, p3: 0}

  	#array of question id's that have been asked to this group of players
  	session[:blacklist] = []
  end

end
