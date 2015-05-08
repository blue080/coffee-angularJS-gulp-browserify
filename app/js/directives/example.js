(function() {
  'use strict';
  var directivesModule, exampleDirective;

  directivesModule = require('./_index.js');

  exampleDirective = function() {
    return {
      restrict: 'EA',
      link: function($scope, $element) {
        return $element.on('click', function() {
          return console.log('element clicked');
        });
      }
    };
  };

  directivesModule.directive('exampleDirective', exampleDirective);

}).call(this);
