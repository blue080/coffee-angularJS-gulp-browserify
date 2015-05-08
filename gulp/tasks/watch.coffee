#
# Created by bug on 15/5/6.
#
'use strict'

config        = require '../config'
gulp          = require 'gulp'

gulp.task 'watch', ['browserSync', 'server'], ()->

  #Scripts are automatically watched and rebundled by Watchify inside Browserify task
  gulp.watch(config.coffee.src,  ['coffee'])
  gulp.watch(config.styles.src,  ['styles'])
  gulp.watch(config.images.src,  ['images'])
  gulp.watch(config.views.watch, ['views'])
  gulp.watch(config.component.src,['component'])

