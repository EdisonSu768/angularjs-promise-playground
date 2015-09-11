(function() {
  var promiseModule;

  promiseModule = angular.module('promiseModule', []);

  promiseModule.controller('promiseController', [
    '$scope', '$q', '$http', function($scope, $q, $http) {
      console.log('$scope is ::', $scope);
      return $scope.test = function() {
        var deferred, httpDeferred, httpPromise, promise;
        console.log('1111111111111111', $q);
        deferred = $q.defer();
        httpDeferred = $q.defer();
        console.log('2222222222222222', deferred);
        promise = deferred.promise;
        httpPromise = httpDeferred.promise;
        console.log('333333333333333', promise);
        httpPromise.then(function(val) {
          console.log('1', val);
          return deferred.resolve('B');
        }, function(err) {
          console.log('err', err);
          return deferred.reject(err);
        });
        promise.then(function(val) {
          return console.log('2', val);
        }, function(err) {
          return console.log('4', err);
        });
        console.log('4444444444444');
        return httpDeferred.reject('HHH');
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=promise.js.map
