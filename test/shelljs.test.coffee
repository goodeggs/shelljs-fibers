require './test_helper'
{cp} = require '..'

describe 'shelljs-fibers', ->

  it 'exposes shelljs core', ->
    expect(cp).to.be.defined

