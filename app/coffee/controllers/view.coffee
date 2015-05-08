#
# Created by bug on 15/5/6.
#
'use strict'

controllersModule = require('./_index')



ViewCtrl = ()->

#  ViewModel
  vm = this

  vm.title = 'AngularJS, Gulp, and Browserify!'
  vm.number = 1234


controllersModule.controller('ViewCtrl', ViewCtrl)