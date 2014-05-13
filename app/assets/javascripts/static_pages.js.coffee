# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
myApp = angular.module("myApp", ["ngGrid"])
myApp.controller "MyCtrl", ($scope) ->
  sortByKey = (array, key) ->
    array.sort (a, b) ->
      x = a[key]
      y = b[key]
      (if (x < y) then -1 else ((if (x > y) then 1 else 0)))
  $scope.filterOptions = filterText: ''
  $scope.filterOptionsDone = filterText: ''
  $scope.myData = sortByKey(JSON.parse($.ajax(
    type: "GET"
    dataType: "json"
    url: "/patients.json"
    async: false
  ).responseText), "studynumber")
  $scope.myDataNotDone = $scope.myData.filter((el) ->
      el.is_done != true)
  $scope.myDataDone = $scope.myData.filter((el) ->
      el.is_done == true)
  $scope.gridOptions = 
    data: "myDataNotDone"
    filterOptions: $scope.filterOptions
    columnDefs: [{field: "studynumber", displayName: "ALiCCS study number", cellTemplate: '<div class="ngCellText" ng-class="col.colIndex()"><span ng-cell-text><a href="patients/{{row.getProperty(\'id\')}}/edit">{{row.getProperty(col.field)}}</a></span></div>'}]
  $scope.gridOptionsDone = 
    data: "myDataDone"
    filterOptions: $scope.filterOptionsDone
    columnDefs: [{field: "studynumber", displayName: "ALiCCS study number", cellTemplate: '<div class="ngCellText" ng-class="col.colIndex()"><span ng-cell-text><a href="patients/{{row.getProperty(\'id\')}}/edit">{{row.getProperty(col.field)}}</a></span></div>'}]

