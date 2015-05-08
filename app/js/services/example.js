(function() {
  'use strict';
  var ExampleService, servicesModule;

  servicesModule = require('./_index.js');

  ExampleService = function($q, $http) {
    var service;
    service = {};
    service.get = function() {
      var deferred;
      deferred = $q.defer();
      $http.get('apiPath').success(function(data) {
        return deferred.resolve(data);
      }).error(function(err, status) {
        return deferred.reject(err, status);
      });
      return deferred.promise;
    };
    return service;
  };

  servicesModule.service('ExampleService', ExampleService);

}).call(this);
