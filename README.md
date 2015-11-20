# hubot-mongodb-brain
MongoDB brain for Hubot. Support MongoLab and MongoHQ on Heroku.

- https://github.com/shokai/hubot-mongodb-brain
- https://npmjs.com/package/hubot-mongodb-brain

[![Circle CI](https://circleci.com/gh/shokai/hubot-mongodb-brain.svg?style=svg)](https://circleci.com/gh/shokai/hubot-mongodb-brain)

## difference betweet `redis-brain`

Hubot's default `redis-brain` saves all data into one large blob (It's not using Redis as KVS) and write it every 20 seconds. So it exceeds `maxmemory` of Redis.


## Requirements

- mongodb
- coffee-script 1.9+

## Install

    % npm install hubot-mongodb-brain -save
    % npm install coffee-script@">=1.9" -save


### edit `external-script.json`

```json
[ "hubot-mongodb-brain" ]
```

### enable mongolab on heroku

    % heroku addons:create mongolab


## Export / Import

- https://github.com/shokai/hubot-mongodb-brain/tree/master/export-import-tools


## Develop

### Debug

    % export HUBOT_LOG_LEVEL=debug


### Test

    % npm install
    % npm test
