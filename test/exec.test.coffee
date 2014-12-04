require './test_helper'
{exec} = require '..'

describe 'exec', ->

  it 'returns code', ->
    expect(exec('true').code).to.equal 0

  it 'returns output', ->
    expect(exec('echo foo', silent: true).output).to.equal 'foo\n'

  it 'throws if exit code is not 0', ->
    expect(-> exec 'false').to.throw

  describe 'with force: true', ->
    it 'ignores exit code', ->
      expect(-> exec 'false', force: true).not.to.throw

