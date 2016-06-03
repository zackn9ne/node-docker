'use strict';

var express = require('express');  
var router  = express.Router();  
var app     = express();

app.set('port', 8080);

router.route('/').get(function(req, res) {  
  res.send('Hello from the Docker container.');
});

app.use('/', router);

app.listen(app.get('port'));

console.log('Magic happens on port ' + app.get('port'));  

