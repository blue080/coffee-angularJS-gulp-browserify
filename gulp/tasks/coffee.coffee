#
# Created by bug on 15/5/5.
#
'use strict'

config = require '../config'
gulp   = require 'gulp'
jshint = require 'gulp-jshint'
coffee = require 'gulp-coffee'
gulpif = require 'gulp-if'
browserSync = require 'browser-sync'

gulp.task 'coffee',()->
  gulp.src config.coffee.src
  .pipe coffee()
#  .pipe jshint()
#  .pipe jshint.reporter('jshint-stylish')
  .pipe gulp.dest(config.coffee.dest)
#  .pipe gulp.dest(config.scripts.dest_dev)
#  .pipe gulp.dest(config.scripts.dest)
  .pipe(gulpif(browserSync.active, browserSync.reload({ stream: true, once: true })))