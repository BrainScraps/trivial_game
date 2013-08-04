class HomeController < ApplicationController
  def index
    # If user gets to homepage and session has started (i.e. they already started a game)
  	if !session[:round].nil?

      # find the round (i.e. "question # 2, question #3, etc") from the session variable
  		@round = session[:round]

      # make sure we have access to the array of questions asked already with the "blacklist"
  		blacklist = session[:blacklist]
  		@scores = session[:scores]

      # pick the next question, but if it is on the blacklist, loop until a question
      # that has not already been asked appears.
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

    # set the first variables for the partial
    @round = session[:round]
    @scores = session[:scores]
    @question = Question.all.sample
  end

  def answer_chosen
  end


end
