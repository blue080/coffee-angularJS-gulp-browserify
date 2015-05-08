#
# Created by bug on 15/5/5.
#
'use strict'

module.exports =
  'serverport': 4000


  'styles':
    'src' : 'app/styles/**/*.scss'
    'dest': 'build/css'


  'scripts':
    'src' : 'app/js/**/*.js'
    'dest': 'build/js'

  'coffee':
    'src' : ['app/coffee/**/*.coffee','app/coffee/*.coffee']
    'dest': 'app/js'


  'images':
    'src' : 'app/images/**/*'
    'dest': 'build/images'


  'views':
    'watch': [
      'app/index.html',
      'app/views/**/*.html'
    ],
    'src': 'app/views/**/*.html',
    'dest': 'app/js'

  'component':
    'src' : ['app/lib/**/*.min.js','app/lib/**/*.js.map']
    'dest': 'build/lib'

  'dist':
    'root'      : 'build/'

  'browserify':
    'entries'   : ['./app/js/main.js']
    'bundleName': 'main.js'
    'sourcemap' : true


