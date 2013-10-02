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
  $(this).addClass('selected-row').siblings().removeClass('selected-row')

showSidebar = ->
  $.getJSON("/events/#{$(this).data('id')}", (data) ->
    $('aside #eventID').contents().last()[0].textContent = "#{data['event_id']}"
    $('aside #thread').contents().last()[0].textContent = "#{data['thread_name']}"
    $('aside #level').contents().last()[0].textContent = "#{data['level']}"
    $('aside #loggerName').contents().last()[0].textContent = "#{data['logger_name']}"
    $('aside #callerFilename').contents().last()[0].textContent = "#{data['caller_filename']}"
    $('aside #callerMethod').contents().last()[0].textContent = "#{data['caller_method']}"
    $('aside #lineNumber').contents().last()[0].textContent = "#{data['line_number']}"
  )
  $('aside').removeClass('hidden')

sidebar = ->
  highlight.call(this)
  showSidebar.call(this)

$ ->
  $('body').on("click", "tr", sidebar)

filter = ->
  window.alert('blurred')

$ ->
  $('input').blur(filter)
