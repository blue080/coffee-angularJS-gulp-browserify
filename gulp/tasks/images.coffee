#
# Created by bug on 15/5/5.
#
'use strict'

config      = require '../config'
#changed     = require 'gulp-changed'
gulp        = require 'gulp'
gulpif      = require 'gulp-if'
#imagemin    = require 'gulp-imagemin'
browserSync = require 'browser-sync'

gulp.task 'images',()->

  gulp.src(config.images.src)
#  .pipe(changed(config.images.dest_dev)) #Ignore unchanged files
#  .pipe(gulp.dest(config.images.dest_dev))
#  .pipe(imagemin()) #Optimize
  .pipe(gulp.dest(config.images.dest))
  .pipe(gulpif(browserSync.active, browserSync.reload({ stream: true, once: true })))

