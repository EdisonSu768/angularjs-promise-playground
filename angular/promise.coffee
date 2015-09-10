promiseModule = angular.module('promiseModule',[])

promiseModule.controller 'promiseController',['$q','$scope', ($q, $scope)->
  $scope.test = () ->
    deferred = $q.defer()
    promise = deferred.promise

    promise
    .then((val) ->
      console.log '1',val
      return 'B')
    .then((val) ->
      console.log '2',val
      return 'C')
    .then (val) ->
      console.log '3',val

    deferred.resolve('A')
]
