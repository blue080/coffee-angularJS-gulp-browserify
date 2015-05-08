(function() {
  'use strict';
  var Routes;

  Routes = function($stateProvider, $locationProvider, $urlRouterProvider) {
    $locationProvider.html5Mode(true);
    $stateProvider.state('Home', {
      url: '/',
      controller: 'ExampleCtrl as home',
      templateUrl: 'home.html',
      title: 'Home'
    }).state('View', {
      url: '/view',
      controller: 'ViewCtrl as view',
      templateUrl: 'view.html',
      title: 'view'
    });
    return $urlRouterProvider.otherwise('/');
  };

  module.exports = Routes;

}).call(this);
