(function() {
  'use strict';
  var ViewCtrl, controllersModule;

  controllersModule = require('./_index');

  ViewCtrl = function() {
    var vm;
    vm = this;
    vm.title = 'AngularJS, Gulp, and Browserify!';
    return vm.number = 1234;
  };

  controllersModule.controller('ViewCtrl', ViewCtrl);

}).call(this);
