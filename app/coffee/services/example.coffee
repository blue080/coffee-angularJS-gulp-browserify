#
# Created by bug on 15/5/6.
#
'use strict'

servicesModule = require('./_index.js')


ExampleService = ($q, $http)->

  service = {}

  service.get = ()->
    deferred = $q.defer()

    $http.get('apiPath').success (data)->
      deferred.resolve(data)
    .error (err, status)->
      deferred.reject(err, status)

    return deferred.promise

  return service



servicesModule.service('ExampleService', ExampleService);