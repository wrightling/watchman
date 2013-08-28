@EventPoller =
  poll: ->
    setTimeout @request, 5000

  request: ->
    $.get($('#events').data('url'), after:$('.event').first().data('id'))

ready = ->
  if $('#events').length > 0
    EventPoller.poll()

$(document).ready(ready)
$(document).on('page:load', ready)

highlight = ->
  $(this).addClass('is-highlighted').siblings().removeClass('is-highlighted')
  $('aside').removeClass('hidden')

$ ->
  $('.event').click(highlight)
