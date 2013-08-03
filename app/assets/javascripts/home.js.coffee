$ ->

  new_game_request = ->
    $.ajax(
        dataType: 'script',
        type: 'POST',
        url: 'start_game'
    )
  $('#new_game').on('click', new_game_request)