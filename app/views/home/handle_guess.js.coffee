speech_box = $('#speech_box')

# let the player know if they were right and update scoreboard

speech_box.removeClass("p1_color p2_color p3_color")

$('#score_footer').empty().append("<%= j render partial: '/home/scores', locals: {scores: @scores} %>")

speech_box.empty().append("<%= j render partial: '/home/response', locals: {correct_answer: @correct_answer} %>")

# after the delay, we show the next question
next_question = ->
  speech_box.empty().append("<%= j render partial: '/home/questions', locals: {round: @round, question: @question} %>")
  $('body').addClass('listening')
setTimeout next_question, 4000
