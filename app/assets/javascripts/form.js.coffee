# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#app = angular.module("formApp", ["ngGrid"])
#app.controller "FormCtrl", ($scope) ->
#  $scope.country = ->
#    alert "jei"

app = angular.module("formApp",[])
app.controller "FormCtrl", ($scope) ->
  $scope.journal = gon.journal
  