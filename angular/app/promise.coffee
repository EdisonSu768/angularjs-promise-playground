promiseModule = angular.module('promiseModule',[])

promiseModule.controller 'promiseController',['$scope', '$q', '$http', ($scope, $q, $http)->
  console.log '$scope is ::',$scope
  $scope.test = () ->
    console.log '1111111111111111',$q
    deferred = $q.defer()
    httpDeferred = $q.defer()
    console.log '2222222222222222',deferred
    promise = deferred.promise
    httpPromise = httpDeferred.promise
    console.log '333333333333333',promise
    httpPromise
    .then((val) ->
        console.log '1',val
        deferred.resolve 'B'
      , (err)->
        console.log 'err',err
        deferred.reject(err)
    )
    .then((val) ->
        console.log '2',val
        deferred.resolve 'C'
      , (err)->
        console.log '4',err
        deferred.reject err)
#    .then (val) ->
#      console.log '3',val

    console.log '4444444444444'
#    deferred.resolve('A')
#    deferred.reject('A')
#    httpDeferred.reject('HHH')
    httpDeferred.resolve('666')
]
