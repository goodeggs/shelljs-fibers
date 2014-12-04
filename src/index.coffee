shelljs = {}
shelljs[k] = v for own k, v of require('shelljs')

shelljs.sleep = require './sleep'
shelljs.exec = require './exec'

module.exports = shelljs
