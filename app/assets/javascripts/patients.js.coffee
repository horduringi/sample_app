# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
patientApp = angular.module("patientApp",['ui.select2'])
patientApp.controller "PatientCtrl", ($scope) ->
  #$scope.patient = gon.patient
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

  

$(document).ready ->
  hide_and_seek("#patient_chromosomaldisorder", "#chromosomal_other", "2")
  show_value = "2"
  if ["2", "3", "4", "5"].indexOf($("#patient_chronicdisease option:selected").val()) isnt -1
    show_value = $("#patient_chronicdisease option:selected").val()
  hide_and_seek("#patient_chronicdisease", "#chronicdisease_spec", show_value)
  hide_and_seek("#patient_otherfamilialcancersynd", "#otherfamilialcancersynd_spec", "1")
  hide_and_seek("#patient_cancerinfamily", "#cancerinfamily_spec", "1")
  hide_and_seek("#patient_prevsurgicalprocedures", "#prevsurgicalproceduresspec", "1")
  hide_and_seek("#patient_prevradtherapy", "#prevradtherapyspec", "1")
  hide_and_seek("#patient_cnstumorprimarytumorsite", "#cnstumorprimarytumorsiteotherspec", "20")
  hide_and_seek("#patient_renaltumortype", "#renaltumortypeotherspec", "9")
  hide_and_seek("#patient_malignantbonetumortype", "#malignantbonetumortypeotherspec", "9")
  hide_and_seek("#patient_malignantbonetumorprimarytumorsite", "#malignantbonetumorprimarytumorsiteotherspec", "11")
  hide_and_seek("#patient_softtissuesarcomastumortype", "#softtissuesarcomastumortypeotherspec", "9")
  hide_and_seek("#patient_softtissuesarcomasprimarytumorsite", "#softtissuesarcomasprimarytumorsiteotherspec", "9")
  hide_and_seek("#patient_carcinomastumortype", "#carcinomastumortypeotherspec", "9")
  hide_and_seek("#patient_othertumortype", "#othertumortypeotherspec", "9")
  hide_and_seek("#patient_otherprimarytumorsite", "#otherprimarytumorsiteotherspec", "9")

  $("#patient_chromosomaldisorder").change ->
    hide_and_seek("#patient_chromosomaldisorder", "#chromosomal_other", "2")
  $("#patient_chronicdisease").change ->
    show_value = "1"
    if ["1", "2", "3", "4"].indexOf($("#patient_chronicdisease option:selected").val()) isnt -1
      show_value = $("#patient_chronicdisease option:selected").val()
    hide_and_seek("#patient_chronicdisease", "#chronicdisease_spec", show_value)
  $("#patient_otherfamilialcancersynd").change ->
    hide_and_seek("#patient_otherfamilialcancersynd", "#otherfamilialcancersynd_spec", "1")
  $("#patient_cancerinfamily").change ->
    hide_and_seek("#patient_cancerinfamily", "#cancerinfamily_spec", "1")
  $("#patient_prevsurgicalprocedures").change ->
    hide_and_seek("#patient_prevsurgicalprocedures", "#prevsurgicalproceduresspec", "1")
  $("#patient_prevradtherapy").change ->
    hide_and_seek("#patient_prevradtherapy", "#prevradtherapyspec", "1")  
  $("#patient_cnstumorprimarytumorsite").change ->
    hide_and_seek("#patient_cnstumorprimarytumorsite", "#cnstumorprimarytumorsiteotherspec", "20")
  $("#patient_renaltumortype").change ->
    hide_and_seek("#patient_renaltumortype", "#renaltumortypeotherspec", "9")
  $("#patient_malignantbonetumortype").change ->
    hide_and_seek("#patient_malignantbonetumortype", "#malignantbonetumortypeotherspec", "9")
  $("#patient_malignantbonetumorprimarytumorsite").change ->
    hide_and_seek("#patient_malignantbonetumorprimarytumorsite", "#malignantbonetumorprimarytumorsiteotherspec", "11")
  $("#patient_softtissuesarcomastumortype").change ->
    hide_and_seek("#patient_softtissuesarcomastumortype", "#softtissuesarcomastumortypeotherspec", "9")
  $("#patient_softtissuesarcomasprimarytumorsite").change ->
    hide_and_seek("#patient_softtissuesarcomasprimarytumorsite", "#softtissuesarcomasprimarytumorsiteotherspec", "9")
  $("#patient_carcinomastumortype").change ->
    hide_and_seek("#patient_carcinomastumortype", "#carcinomastumortypeotherspec", "9")
  $("#patient_othertumortype").change ->
    hide_and_seek("#patient_othertumortype", "#othertumortypeotherspec", "9")
  $("#patient_otherprimarytumorsite").change ->
    hide_and_seek("#patient_otherprimarytumorsite", "#otherprimarytumorsiteotherspec", "9")

  $(".firstprimcancertypes").hide()
  $("#patient_firstprimcancertype").change ->
    $(".firstprimcancertypes").hide()
    selected= $("#patient_firstprimcancertype option:selected").val()
    $("#" + selected).show()


hide_and_seek = (master, slave, show_value) ->
  selected = $(master + " option:selected")
  if selected.val() == show_value
    $(slave).show()
  else
    $(slave).hide()