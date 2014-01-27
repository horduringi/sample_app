# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  re = /^\d*,?\d*$/
  $(".number_field").change (event) ->
    unless $(this).val().match(re)
      alert "Wrong input:\nOnly use digits and if a decimal separator is appropriate, comma must be used as a decimal separator."
      $(this).val('')
  #$(".number_field").blur ([data], event) ->
  #  if $(this).val().search(\.) isnt -1
  #    alert "invalid"
  #$(".number_field").inputmask "decimal",
  #  groupSeparator: ","
  #$(".number_field").inputmask "d/m/y",
  #  onincomplete: ->
  #    alert "inputmask incomplete"
  hide_and_seek("#journal_radiotherapy", "#radiotherapy_show", "1")
  $("#journal_radiotherapy").change ->
    hide_and_seek("#journal_radiotherapy", "#radiotherapy_show", "1")

  hide_and_seek("#journal_surgery", "#surgery_show", "1")
  $("#journal_surgery").change ->
    hide_and_seek("#journal_surgery", "#surgery_show", "1")

  hide_and_seek("#journal_chemotherapy", "#chemotherapy_show", "1")
  $("#journal_chemotherapy").change ->
    hide_and_seek("#journal_chemotherapy", "#chemotherapy_show", "1")

  hide_and_seek("#journal_bonemarrowtransplantation", "#bonemarrowtransplantation_show", "1")
  $("#journal_bonemarrowtransplantation").change ->
    hide_and_seek("#journal_bonemarrowtransplantation", "#bonemarrowtransplantation_show", "1")

  hide_and_seek("#journal_externalbeamradiotherapy", "#externalbeamradiotherapy_show", "1")
  $("#journal_externalbeamradiotherapy").change ->
    hide_and_seek("#journal_externalbeamradiotherapy", "#externalbeamradiotherapy_show", "1")

  hide_and_seek("#journal_brachytherapy", "#brachytherapy_show", "1")
  $("#journal_brachytherapy").change ->
    hide_and_seek("#journal_brachytherapy", "#brachytherapy_show", "1")

  hide_and_seek("#journal_internalradiotherapy", "#internalradiotherapy_show", "1")
  $("#journal_internalradiotherapy").change ->
    hide_and_seek("#journal_internalradiotherapy", "#internalradiotherapy_show", "1")

  hide_and_seek("#journal_internalradiotherapy", "#internalradiotherapy_show", "1")
  $("#journal_internalradiotherapy").change ->
    hide_and_seek("#journal_internalradiotherapy", "#internalradiotherapy_show", "1")

hide_and_seek = (master, slave, show_value) ->
  selected = $(master + " option:selected")
  if selected.val() == show_value
    $(slave).show()
  else
    $(slave).hide()