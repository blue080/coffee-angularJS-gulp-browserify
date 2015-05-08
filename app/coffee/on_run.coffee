#
# Created by bug on 15/5/6.
#
'use strict'


OnRun = ($rootScope, AppSettings)->

  #change page title based on state
  $rootScope.$on '$stateChangeSuccess',(event, toState)->
    $rootScope.pageTitle = ''

    if ( toState.title )
      $rootScope.pageTitle += toState.title
      $rootScope.pageTitle += ' \u2014 '


  $rootScope.pageTitle += AppSettings.appTitle



module.exports = OnRun;