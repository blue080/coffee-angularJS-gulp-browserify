(function() {
  'use strict';
  var angular;

  angular = require('angular');

  require('angular-ui-router');

  require('./templates');

  require('./controllers/_index');

  require('./services/_index');

  require('./directives/_index');

  angular.element(document).ready(function() {
    var requires;
    requires = ['ui.router', 'templates', 'app.controllers', 'app.services', 'app.directives'];
    window.app = angular.module('app', requires);
    angular.module('app').constant('AppSettings', require('./constants'));
    angular.module('app').config(require('./routes'));
    angular.module('app').run(require('./on_run'));
    angular.bootstrap(document, ['app']);
  });

}).call(this);
