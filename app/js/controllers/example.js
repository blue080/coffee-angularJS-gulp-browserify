(function() {
  'use strict';
  var ExampleCtrl, controllersModule;

  controllersModule = require('./_index');

  ExampleCtrl = function() {
    var vm;
    vm = this;
    vm.title = 'AngularJS, Gulp, and Browserify!';
    return vm.number = 1234;
  };

  controllersModule.controller('ExampleCtrl', ExampleCtrl);

}).call(this);
