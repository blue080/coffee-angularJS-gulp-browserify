#
# Created by bug on 15/5/6.
#
'use strict'

config = require '../config'
gulp   = require 'gulp'
del    = require 'del'

gulp.task 'clean', (cb) ->

  del([config.dist.root], cb)


