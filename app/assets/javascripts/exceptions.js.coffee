exceptionDetailsSuccess = ->
  $('#exceptionModal').modal('toggle')

exceptionDetails = ->
  if !$('#exceptionInfo').hasClass('disabled')
    $('#exceptionModal').remove()
    $.get($('#exceptionInfo').data('url') + $('.event.selected-row').data('id'), exceptionDetailsSuccess)

$ ->
  $('body').on("click", "#exceptionInfo", exceptionDetails)
