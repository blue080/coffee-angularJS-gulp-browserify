#
# Created by bug on 15/5/6.
#
'use strict'

directivesModule = require('./_index.js')


exampleDirective = () ->

  return {
  restrict: 'EA'
  link: ($scope, $element) ->

    $element.on 'click', ()->
      console.log('element clicked')

  }




directivesModule.directive('exampleDirective', exampleDirective)