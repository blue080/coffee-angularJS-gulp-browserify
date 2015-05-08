#
# Created by bug on 15/5/6.
#
'use strict'

gulp        = require 'gulp'
runSequence = require 'run-sequence'

gulp.task 'dev', ['clean'], (cb)->

  cb = cb || ()->

  global.isProd = false

  runSequence(['styles', 'images', 'views','coffee','browserify'], 'watch', cb)

