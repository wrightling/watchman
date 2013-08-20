@EventPoller =
  poll: ->
    setTimeout @request, 5000

  request: ->
    $.get($('#events').data('url'), after:$('.event').first().data('id'))

ready = ->
  EventPoller.poll()

$(document).ready(ready)
$(document).on('page:load', ready)
