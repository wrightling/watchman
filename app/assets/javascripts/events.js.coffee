@EventPoller =
  poll: ->
    setTimeout @request, 5000

  request: ->
    $.get($('#events').data('url'))

ready = ->
  EventPoller.poll()

$(document).ready(ready)
$(document).on('page:load', ready)
