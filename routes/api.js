var express = require('express');
var router = express.Router();
var redis = require('redis');
var client = redis.createClient('6379','redis');

/* GET greeting. */
router.get('/sayHello', function(req, res, next) {
  client.incr('counter', function(err,counter){
    console.log('Number on the counter is',counter);
    res.send('Hello World from skandasoft '+counter+[1,2,2,3].unique());
  });
});

module.exports = router;
