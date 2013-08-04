$ ->

  # this function runs if the Start New Game button is clicked
  new_game_request = ->
    $.ajax(
        dataType: 'script',
        type: 'POST',
        url: 'start_game'
    )
  $('#new_game').on('click', new_game_request)


  # here begins the handler for the keypress event when question is loaded
  speech_box = $('#speech_box');


  # this function needs counter to deactivate itself after the first valid keypress
  number_of_keypresses = 0

  $("body").keypress (event) ->

    # the A key is number 97, representing player1
    if event.which is 97
      alert "A has been pressed"
      number_of_keypresses++
      speech_box.addClass("p1_color")


    # the B key is number 98, representing player2
    else if event.which is 98
      alert "B has been pressed"
      number_of_keypresses++
      speech_box.addClass("p2_color")

    # the B key is number 112, representing player3
    else if event.which is 112
      alert "P has been pressed"
      number_of_keypresses++
      speech_box.addClass("p3_color")

    # the keypresses increases only increases when A,B,or P are pressed
    alert number_of_keypresses
