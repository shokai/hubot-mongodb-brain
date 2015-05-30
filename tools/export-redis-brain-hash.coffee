# export from hubot-redis-brain-hash

'use strict'

Redis = require 'redis'
Url   = require 'url'

info   = Url.parse process.env.REDISTOGO_URL or process.env.REDIS_URL
client = Redis.createClient(info.port, info.hostname)
prefix = info.path?.replace('/', '') or 'hubot'

if info.auth
  client.auth info.auth.split(":")[1]

client.on 'error', (err) ->
  console.error err

client.on 'connect', ->

  client.hget "hubot:brain", "_private", (err, res) ->
    console.log res
    client.end()
