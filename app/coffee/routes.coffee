#
# Created by bug on 15/5/6.
#
'use strict'


Routes = ($stateProvider, $locationProvider, $urlRouterProvider)->

  $locationProvider.html5Mode(true)

  $stateProvider
  .state('Home', {
      url: '/',
      controller: 'ExampleCtrl as home',
      templateUrl: 'home.html',
      title: 'Home'
    })
  .state('View',{
      url:'/view'
      controller: 'ViewCtrl as view'
      templateUrl: 'view.html'
      title: 'view'
    })

  $urlRouterProvider.otherwise('/')



module.exports = Routes