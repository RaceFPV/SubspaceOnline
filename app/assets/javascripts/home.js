$(function() {
  var source;
  source = new EventSource('/home/events');

  source.addEventListener('home.create', function(e) {
    var message;
    message = $.parseJSON(e.data);
    return $('#chat').append($('<li>').text("" + message.name + ": " + message.content));
  });
});