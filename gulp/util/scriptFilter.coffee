#
# Created by bug on 15/5/5.
#
'use strict'

path = require 'path'

#Filters out non .coffee files. Prevents
#accidental inclusion of possible hidden files
module.exports = (name) ->

  return /(\.(coffee)$)/i.test(path.extname(name));

