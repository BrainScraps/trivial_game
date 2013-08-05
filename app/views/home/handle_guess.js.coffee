speech_box = $('#speech_box')

# let the player know if they were right and update scoreboard

speech_box.removeClass("p1_border p2_border p3_border")
speech_box.addClass("black_border")

$('#score_footer').empty().append("<%= j render partial: '/home/scores', locals: {scores: @scores} %>")

speech_box.empty().append("<%= j render partial: '/home/response', locals: {correct_answer: @correct_answer} %>")

$( "#host_box" ).toggle( "bounce", { times: 1 }, "slow", 3000 )


if <%= @round %> == 6
  speech_box.empty().append("<%= j render partial: '/home/end_game' %>")
else
# after the delay, we show the next question
  next_question = ->
    speech_box.empty().append("<%= j render partial: '/home/questions', locals: {round: @round, question: @question} %>")
    $('body').addClass('listening')
  setTimeout next_question, 4000
