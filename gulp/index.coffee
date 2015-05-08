#
# Created by bug on 15/5/5.
#
'use strict'

fs = require 'fs'
onlyScripts = require './util/scriptFilter'
tasks = fs.readdirSync('./gulp/tasks/').filter(onlyScripts)

tasks.forEach (task)->
  require './tasks/' + task
