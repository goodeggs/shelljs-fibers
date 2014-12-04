Future = require 'fibers/future'
shelljs = require 'shelljs'

module.exports = (command, options={}) ->
  future = new Future
  options.async = true
  shelljs.exec command, options, (code, output) ->
    if code isnt 0 and !options.force
      future.throw new Error("`#{command}` exited with #{code}")
    else
      future.return({code, output})
  future.wait()

