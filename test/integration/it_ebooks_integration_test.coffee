assert = require "assert"
ItEbooks = require '../../lib/it_ebooks'

# for testing purposes so we don't hit the api
ItEbooks.baseUrl = 'http://localhost:8000/it-ebooks-api.info/v1/'

describe 'ItEbooks', ->

    describe '.book', ->

        it 'returns book information', (done) ->
            ItEbooks.book 1195998323, ->
                done()


    describe '.search', ->

        it 'returns search information', (done) ->
            ItEbooks.search 'the good parts', ->
                done()


