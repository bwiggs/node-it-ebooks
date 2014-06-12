assert = require "assert"
ItEbooks = require '../lib/it_ebooks'

describe 'ItEbooks Internals', ->

    describe '.baseUrl', ->
        
        it 'exists', ->
            assert ItEbooks.baseUrl != undefined

    describe '._get', ->
        
        it 'exists', ->
            assert ItEbooks._get != undefined

describe 'ItEbooks API', ->
    
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
