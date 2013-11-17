# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
app = angular.module("patientApp",['ui.select2'])
app.controller "PatientCtrl", ($scope) ->
  $scope.journal = gon.patient
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