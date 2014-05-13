# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#app = angular.module("formApp", ["ngGrid"])
#app.controller "FormCtrl", ($scope) ->
#  $scope.country = ->
#    alert "jei"

jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

$(document).ready ->
  hide_and_seek("#patient_lastdoctorsvisitstatus", "#lastdoctorsvisitstatus_show", "1")
  $("#patient_lastdoctorsvisitstatus").change ->
    hide_and_seek("#patient_lastdoctorsvisitstatus", "#lastdoctorsvisitstatus_show", "1")

hide_and_seek = (master, slave, show_value) ->
  selected = $(master + " option:selected")
  if selected.val() == show_value
    $(slave).show()
  else
    $(slave).hide()

formApp = angular.module("formApp",['ui.select2'])
formApp.controller "FormCtrl", ($scope) ->
  #$scope.journal = gon.journal
  $("#journal_cytostatic_drug_given_cytostaticdrugid").select2()
  #$("#journal_cytostatic_drug_given_dosequality").select2()
  #$("#journal_cytostatic_drug_given_anthracyclinesbolusinf").select2()
  $scope.chronicdiseasechange = () ->
    $scope.chronicdiseasespecshow = [2,3,4,5].indexOf($scope.journal.chronicdisease) > -1
  $scope.range = (min, max) ->
    input = []
    i = min

    while i <= max
      input.push i
      i++
    input