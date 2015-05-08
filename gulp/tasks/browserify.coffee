#
# Created by bug on 15/5/5.
#
'use strict'

config       = require '../config'
gulp         = require 'gulp'
gulpif       = require 'gulp-if'
gutil        = require 'gulp-util'  #有自定义方法
source       = require 'vinyl-source-stream'
sourcemaps   = require 'gulp-sourcemaps'
buffer       = require 'vinyl-buffer'
streamify    = require 'gulp-streamify'
watchify     = require 'watchify'
browserify   = require 'browserify'
uglify       = require 'gulp-uglify'
handleErrors = require '../util/handleErrors'
browserSync  = require 'browser-sync'
ngAnnotate   = require 'browserify-ngannotate'


buildScript = (file) ->

  bundler = browserify({
    entries: config.browserify.entries,
    debug: true,
    cache: {},
    packageCache: {},
    fullPaths: true
  }, watchify.args);

  if ( !global.isProd )
    bundler = watchify(bundler)
    bundler.on 'update', ()->
      rebundle();



  bundler.transform(ngAnnotate);
  bundler.transform('brfs');

  rebundle = () ->
    stream = bundler.bundle()
    createSourcemap = global.isProd && config.browserify.sourcemap

    gutil.log('Rebundle...')

    stream.on('error', handleErrors)
    .pipe(source(file))
    .pipe(gulpif(createSourcemap, buffer()))
    .pipe(gulpif(createSourcemap, sourcemaps.init()))
    .pipe(gulpif(global.isProd, streamify(uglify({
        compress: { drop_console: true }
      }))))
    .pipe(gulpif(createSourcemap, sourcemaps.write('./')))
    .pipe(gulp.dest(config.scripts.dest))
    .pipe(gulpif(browserSync.active, browserSync.reload({ stream: true, once: true })))

  return rebundle()


gulp.task 'browserify', ()->

  buildScript('main.js');


