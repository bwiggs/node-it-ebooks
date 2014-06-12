http = require 'http'

class ItEbooks

    #baseUrl: 'http://it-ebooks-api.info/v1'
    baseUrl: 'http://localhost:8000/it-ebooks-api.info/v1/'

    _get: (path, callback) ->
        requestString = @baseUrl + path
        console.log 'GET ' + requestString
        http.get requestString, (res) ->
            body = ''
            res.on 'data', (chunk) ->
              body += chunk
            res.on 'end', ->
              callback JSON.parse body

    search: (query, callback) ->
        throw new Error 'must provide a search query' if !query
        throw new Error 'must provide a callback' if !callback
        @_get '/search/' + query, callback

module.exports = new ItEbooks
