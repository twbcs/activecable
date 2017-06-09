App.ac_link = App.cable.subscriptions.create "AcLinkChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']
    #alert data['message']
    # Called when there's incoming data on the websocket for this channel

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=ac_link_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.ac_link.speak event.target.value
    event.target.value = ''
    event.preventDefault()
    # body...
