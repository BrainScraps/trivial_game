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

  number_of_keypresses = 0
  # here begins the handler for the keypress event when question is loaded
  buzzer_listener = (event) ->
    speech_box = $('#speech_box')

    # this function uses the number_of_keypresses variable
    # to deactivate itself after the first valid keypress
    if body.hasClass("listening")
      # the A key is number 97, representing player1
      if event.which is 97
        alert "A has been pressed"
        number_of_keypresses++
        speech_box.addClass("p1_color")
        body.removeClass("listening")

      # the B key is number 98, representing player2
      else if event.which is 98
        alert "B has been pressed"
        number_of_keypresses++
        speech_box.addClass("p2_color")
        body.removeClass("listening")

      # the B key is number 112, representing player3
      else if event.which is 112
        alert "P has been pressed"
        number_of_keypresses++
        speech_box.addClass("p3_color")
        body.removeClass("listening")

      # the keypresses increases only increases when A,B,or P are pressed
      alert number_of_keypresses

  # this line stops the buzzer_listener function from running after first valid keypress
  body.on "keydown", buzzer_listener(event)

