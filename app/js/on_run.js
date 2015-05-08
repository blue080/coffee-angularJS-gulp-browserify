(function() {
  'use strict';
  var OnRun;

  OnRun = function($rootScope, AppSettings) {
    $rootScope.$on('$stateChangeSuccess', function(event, toState) {
      $rootScope.pageTitle = '';
      if (toState.title) {
        $rootScope.pageTitle += toState.title;
        return $rootScope.pageTitle += ' \u2014 ';
      }
    });
    return $rootScope.pageTitle += AppSettings.appTitle;
  };

  module.exports = OnRun;

}).call(this);
