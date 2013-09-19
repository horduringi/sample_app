# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#app = angular.module("formApp", ["ngGrid"])
#app.controller "FormCtrl", ($scope) ->
#  $scope.country = ->
#    alert "jei"
app = angular.module("formApp", ["ngGrid"])
app.controller "FormController", ($scope) ->
  $scope.selectcountry = (c) ->
    $.ajax 
      url: "/form/setcountry"
      data:
        countryid:
          parseInt(c.country)
      type: "PUT"
      success:
        alert "jei"