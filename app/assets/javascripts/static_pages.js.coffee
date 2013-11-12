# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
app = angular.module("myApp", ["ngGrid"])
app.controller "MyCtrl", ($scope) ->
  sortByKey = (array, key) ->
    array.sort (a, b) ->
      x = a[key]
      y = b[key]
      (if (x < y) then -1 else ((if (x > y) then 1 else 0)))
  $scope.filterOptions = filterText: ''
  $scope.myData = sortByKey(JSON.parse($.ajax(
    type: "GET"
    url: "/form/get_journals"
    async: false
  ).responseText), "studynumber")
  $scope.gridOptions = 
    data: "myData"
    filterOptions: $scope.filterOptions
    columnDefs: [{field: "studynumber", displayName: "ALiCCS study number", cellTemplate: '<div class="ngCellText" ng-class="col.colIndex()"><span ng-cell-text><a href="journal/{{row.getProperty(\'id\')}}/edit">{{row.getProperty(col.field)}}</a></span></div>'}]