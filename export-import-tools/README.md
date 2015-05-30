# export/import tools

## install dependencies

    % npm install
    % npm install redis async
    % npm install coffee-script -g


## check RedisToGo settings

    % heroku config


## export from [hubot-redis-brain](https://npmjs.com/package/hubot-redis-brain)

    % REDISTOGO_URL=(your-redistogo-url)    # for redistogo
    % REDISTOGO_URL=redis://localhost:6379  # for localhost

    # export
    % coffee export-redis-brain.coffee > brain.json


## export from [hubot-brain-redis-hash](https://npmjs.com/package/hubot-brain-redis-hash)

    % REDISTOGO_URL=(your-redistogo-url)    # for redistogo
    % REDISTOGO_URL=redis://localhost:6379  # for localhost

    # export
    % coffee export-brain-redis-hash.coffee > brain.json


## import to mongodb-brain

    % MONGOLAB_URL=(your-mongolab-url)              # for mongolab
    % MONGOLAB_URL=mongodb://localhost/hubot-brain  # for localhost

    # import
    % cat brain.json | coffee import-mongodb-brain.coffee
