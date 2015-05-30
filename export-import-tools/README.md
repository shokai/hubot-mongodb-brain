# export/import tools

## install dependencies

    % npm install
    % npm install redis async
    % npm install coffee-script -g


## export from [hubot-redis-brain](https://npmjs.com/package/hubot-redis-brain)

    # redistogo
    % REDISTOGO_URL=(your-redistogo-url) coffee tools/export-redis-brain.coffee > dump.brain

    # localhost
    % REDISTOGO_URL=redis://localhost:6379 coffee tools/export-redis-brain.coffee > dump.brain

## import to mongodb-brain

    # mongolab
    % cat dump.brain | MONGOLAB_URL=(your-mongolab-url) coffee tools/import-mongodb-brain.coffee

    # localhost
    % cat dump.brain | MONGOLAB_URL=mongodb://localhost/hubot-brain coffee tools/import-mongodb-brain.coffee
