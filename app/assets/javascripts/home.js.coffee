$ ->
  body = $('body')
  # this function runs if the Start New Game button is clicked
  new_game_request = ->
    $.ajax(
        dataType: 'script',
        type: 'POST',
        url: 'start_game'
    )
  $('#new_game').on('click', new_game_request)

  mixpanel.track("click")
  mixpanel.track("Start")

  #
  # This function will send an AJAX request when an answer is clicked
  # It will send the ID of the answer that was clicked as well as the
  # 'name' of the player who was answering (p1, p2, or p3)

  $('body').on 'click', '.answer', ->
    answer_id = $(this).attr('id')
    player_name = $('#speech_box').attr('class').substring(0,2)

    $.ajax(
        dataType: 'script',
        type: 'POST',
        url: 'handle_guess',
        data: 'player=' + player_name + '&answer=' + answer_id
    )


  # this line stops the buzzer_listener function from running after first valid keypress
  $(window).on "keydown", (event) ->
    speech_box = $('#speech_box')

   # ALTERNATE KEYCODES
   # the A key is number 97, representing player1
   # the B key is number 98, representing player2
   # the B key is number 112, representing player3

    # this function uses the number_of_keypresses variable
    # to deactivate itself after the first valid keypress
    if body.hasClass("listening")
      # the A key is number 65, representing player1
      if event.which is 65
        #speech_box.addClass("p1_color")
        speech_box.removeClass("black_border")
        speech_box.addClass("p1_border")
        body.removeClass("listening")

      # the B key is number 66, representing player2
      else if event.which is 66
        speech_box.removeClass("black_border")
        speech_box.addClass("p2_border")
        body.removeClass("listening")

      # the P key is number 80, representing player3
      else if event.which is 80
        speech_box.removeClass("black_border")
        speech_box.addClass("p3_border")
        body.removeClass("listening")
