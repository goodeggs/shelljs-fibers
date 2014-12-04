require './test_helper'
{sleep} = require '..'

describe 'sleep', ->

  it 'sleeps', ->
    start = Date.now()
    sleep .1
    end = Date.now()
    expect(end - start).to.be.within 50, 150

