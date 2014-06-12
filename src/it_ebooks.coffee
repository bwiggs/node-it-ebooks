http = require 'http'

class ItEbooks

    baseUrl: 'http://it-ebooks-api.info/v1'

    get: (path, callback) ->
        requestString = @baseUrl + path
        #console.log 'GET ' + requestString
        http.get requestString, (res) ->
            body = ''
            res.on 'data', (chunk) ->
              body += chunk
            res.on 'end', ->
              callback JSON.parse body

    search: (query, callback) ->
        throw new Error 'must provide a search query' if !query
        throw new Error 'must provide a callback' if !callback
        @get '/search/' + query, callback

    book: (bookId, callback) ->
        throw new Error 'must provide a book id' if !bookId
        @get '/book/' + bookId, callback

module.exports = new ItEbooks
