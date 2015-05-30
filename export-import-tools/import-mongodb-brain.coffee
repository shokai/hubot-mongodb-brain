# import mongobrain from STDIN
# drop collection and overwrite

async       = require 'async'
MongoClient = require('mongodb').MongoClient

mongoUrl = process.env.MONGODB_URL or
           process.env.MONGOLAB_URI or
           process.env.MONGOHQ_URL or
           'mongodb://localhost/hubot-brain'


MongoClient.connect mongoUrl, (err, db) ->
  throw err if err

  console.log "MongoDB connected"

  process.stdin.setEncoding 'utf8'

  data = ""
  process.stdin.on 'readable', ->
    chunk = process.stdin.read()
    data += chunk if chunk?

  process.stdin.on 'end', ->
    data = JSON.parse data
    docs = []
    for k,v of data
      docs.push
        type: '_private'
        key: k
        value: v

    db.collection 'brain', (err, collection) ->
      collection.drop ->
        db.createCollection 'brain', (err, collection) ->
          async.eachSeries docs, (doc, done) ->
            console.log "insert #{doc.key}"
            collection.insert doc, done
          , (errs, ress) ->
            if errs
              console.error errs
              process.exit 1
            process.exit 0


