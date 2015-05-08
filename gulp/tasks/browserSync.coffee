#
# Created by bug on 15/5/5.
#
'use strict'

config      = require '../config'
browserSync = require 'browser-sync'
gulp        = require 'gulp'

gulp.task 'browserSync',() ->

  browserSync({
    proxy: 'localhost:' + config.serverport
  })

