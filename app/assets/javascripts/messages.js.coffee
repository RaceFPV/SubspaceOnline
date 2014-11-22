source = new EventSource('/messages/events')
source.addEventListener 'message.create', (e) ->
  message = $.parseJSON(e.data).message
  $('#chat').append($('<li>').text("#{message.name}: #{message.content}"))