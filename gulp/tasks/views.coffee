#
# Created by bug on 15/5/6.
#
'use strict'

config         = require '../config'
gulp           = require 'gulp'
templateCache  = require 'gulp-angular-templatecache'
browserSync    = require 'browser-sync'
gulpif         = require 'gulp-if'

#Views task
gulp.task 'views', ()->

  #Put our index.html in the dist folder
  gulp.src('app/index.html')
#  .pipe(gulp.dest(config.dist.root_dev))
  .pipe(gulp.dest(config.dist.root))

  #Process any other view files from app/views
  gulp.src(config.views.src)
  .pipe(templateCache({
      standalone: true
    }))
  .pipe(gulp.dest(config.views.dest))
  .pipe(gulpif(browserSync.active, browserSync.reload({ stream: true })))
#  .pipe(gulp.dest(config.views.dest_dev))

