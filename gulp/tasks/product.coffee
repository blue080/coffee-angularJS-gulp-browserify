#
# Created by bug on 15/5/6.
#
'use strict'

gulp        = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'prod', ['clean'], (cb) ->

  cb = cb || ()->

  global.isProd = true;

  runSequence(['styles', 'images', 'views', 'browserify'], 'gzip', cb);


