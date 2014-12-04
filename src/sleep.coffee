Future = require 'fibers/future'

module.exports = (timeoutSec) ->
  future = new Future
  setTimeout future.return.bind(future), Math.floor(timeoutSec * 1000)
  future.wait()
 
