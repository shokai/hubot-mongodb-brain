# hubot-mongodb-brain
MongoDB brain for Hubot. Support MongoLab and MongoHQ on heroku.

- https://github.com/shokai/hubot-mongodb-brain

[![Circle CI](https://circleci.com/gh/shokai/hubot-mongodb-brain.svg?style=svg)](https://circleci.com/gh/shokai/hubot-mongodb-brain)

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

## Debug

    % export HUBOT_LOG_LEVEL=debug


## Test

    % npm install
    % npm test
