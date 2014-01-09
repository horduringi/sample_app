# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  hide_and_seek("#journal_radiotherapy", "#radiotherapy_show", "1")
  $("#journal_radiotherapy").change ->
    hide_and_seek("#journal_radiotherapy", "#radiotherapy_show", "1")

hide_and_seek = (master, slave, show_value) ->
  selected = $(master + " option:selected")
  if selected.val() == show_value
    $(slave).show()
  else
    $(slave).hide()