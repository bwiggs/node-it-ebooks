http = require 'http'

class ItEbooks

    #baseUrl: 'http://it-ebooks-api.info/v1'
    @baseUrl: 'http://localhost:8000/it-ebooks-api.info/v1/'

    _get: (path, callback) ->
        http.get @baseUrl + path, (res) ->
            body = ''
            res.on 'data', (chunk) ->
              body += chunk
            res.on 'end', ->
              callback JSON.parse body

    search: (query, callback) ->
        _get '/search/' + query, callback

module.exports = ItEbooks
