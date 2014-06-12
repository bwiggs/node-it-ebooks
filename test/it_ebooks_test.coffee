assert = require "assert"
ItEbooks = require '../lib/it_ebooks'

# for testing purposes so we don't hit the api
ItEbooks.baseUrl = 'http://localhost:8000/it-ebooks-api.info/v1/'

describe 'ItEbooks', ->

    describe '.baseUrl', ->

        it 'exists', ->
            assert ItEbooks.baseUrl != undefined


    describe '.book', ->

        it 'exists', ->
            assert ItEbooks.book != undefined

        it 'throws and Error when there is no book id', ->
            assert.throws ->
                ItEbooks.book()
            ,Error


    describe '.search', ->

        it 'exists', ->
            assert ItEbooks.search != undefined

        it 'throws and Error when there is no search query', ->
            assert.throws ->
                ItEbooks.search()
            ,Error

        it 'throws and Error when there is no callback', ->
            assert.throws ->
                ItEbooks.search('search term')
            , Error
