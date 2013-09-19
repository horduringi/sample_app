# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
app = angular.module("myApp", ["ngGrid"])
app.controller "MyCtrl", ($scope) ->
  $scope.myData = JSON.parse($.ajax(
    type: "GET"
    url: "/form/get_journals"
    async: false
  ).responseText)
  $scope.gridOptions = 
    data: "myData"
    columnDefs: [{field: "studynumber", displayName: "ALiCCS study number", cellTemplate: '<div class="ngCellText" ng-class="col.colIndex()"><span ng-cell-text><a href="form/{{row.getProperty(col.field)}}/">{{row.getProperty(col.field)}}</a></span></div>'}]