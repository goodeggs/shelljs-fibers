require './test_helper'
{exec} = require '..'

describe 'exec', ->

  describe 'without a callback', ->

    it 'returns code', ->
      expect(exec('true').code).to.equal 0

    it 'returns output', ->
      expect(exec('echo foo', silent: true).output).to.equal 'foo\n'

    it 'throws if exit code is not 0', ->
      expect(-> exec 'false').to.throw

    describe 'with force: true', ->
      it 'ignores exit code', ->
        expect(-> exec 'false', force: true).not.to.throw

  describe 'with a callback', ->

    it 'calls the callback', (done) ->
      exec 'true', (err, {code}) ->
        expect(err).not.to.exist
        expect(code).to.equal 0
        done()

