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
    $('aside #level').contents().last()[0].textContent = "#{data['level_string']}"
    $('aside #callerClass').contents().last()[0].textContent = "#{data['caller_class']}"
    $('aside #callerMethod').contents().last()[0].textContent = "#{data['caller_method']}"
    $('aside #lineNumber').contents().last()[0].textContent = "#{data['caller_line']}"
    $('aside #formattedMessage').contents().last()[0].textContent = "#{data['formatted_message']}"
  )
  $('aside').removeClass('hidden')

sidebar = ->
  highlight.call(this)
  showSidebar.call(this)

$ ->
  $('body').on("click", "tr", sidebar)

filter = ->
  $('.event').remove()
  $.cookie('num_events', $('#spinner-01').val(), { expires: 365 })
  $.cookie('log_level', $('#log_level').val(), { expires: 365 })
  $.get($('#events').data('url'), after:0)

changeNumEvents = ->
  if $.cookie('num_events') != $('#spinner-01').val()
    filter()

$ ->
  $('#spinner-01').blur(changeNumEvents)

$ ->
  $('#log_level').change(filter)

$ ->
  $('select').selectpicker({style: 'btn-info btn-inverse', menuStyle: 'dropdown-inverse'})
