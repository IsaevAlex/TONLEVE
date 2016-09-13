window.Tonleve = ->
  setTimeout ->
    $.get('/messages')
  , 5000

jQuery ->
  Poll() if $('#messages').size() > 0