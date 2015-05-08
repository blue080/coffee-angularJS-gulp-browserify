(function() {
  'use strict';
  var angular;

  angular = require('angular');

  module.exports = angular.module('app.controllers', []);

  require('./example.js');

  require('./view.js');

}).call(this);
