@EventPoller =
  poll: ->
    setTimeout @request, 5000

  request: ->
    $.get($('#events').data('url'))

ready = ->
  if $('#events').length > 0
    EventPoller.poll()

$(document).ready(ready)
$(document).on('page:load', ready)
