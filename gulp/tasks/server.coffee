#
# Created by bug on 15/5/5.
#
'use strict'

config  = require '../config'
http    = require 'http'
express = require 'express'
gulp    = require 'gulp'
gutil   = require 'gulp-util'
morgan  = require 'morgan'
path    = require 'path'

gulp.task 'server', ()->

  server = express()

  #log all requests to the console
  server.use(morgan('dev'))
  server.use(express.static(config.dist.root))

  #Serve index.html for all routes to leave routing up to Angular
  server.all '/*', (req, res) ->
    res.sendFile('index.html', { root: config.dist.root })

  #Start webserver if not already running
  s = http.createServer(server)
  s.on 'error', (err)->
    if(err.code == 'EADDRINUSE')
      gutil.log('Development server is already started at port ' + config.serverport)
    else
      throw err

  s.listen(config.serverport);

