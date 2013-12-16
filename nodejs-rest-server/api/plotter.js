#!/usr/bin/env node

var
  fs        = require('fs'),
  restify   = require('restify'),

  SVGs      = __dirname + "/defaults.json",
  jobPath = "M0 0"
  ;

var server = restify.createServer();

function respond(req, res, next) {
  res.send('hello ' + req.params.name);
}

// Task to reload stock SVGs from defaults.js and load the requested name
server.get('/load/:id', function(req, res, next) {
    var coords = fs.readFileSync(SVGs, {encoding: 'utf8'});
    var jobsID = req.params.id;
    coords = JSON.parse(coords);
    console.log(coords);
    console.log(typeof coords);
    coords = coords['jobs'];
    console.log(coords);
    console.log('got job load request for: ' + jobsID);
    if(coords[jobsID]) {
      console.log('switching job to: ' + jobsID);
      jobPath = coords[jobsID];
      res.send('switching job to: ' + jobsID);
    }
    else {
      console.log('job: ' + jobsID + ' doesn\'t exist!');
      res.send('job: ' + jobsID + ' doesn\'t exist!');
    }
});

server.get('/', function(req, res, next) {
  req.params.name = 'world';
  respond(req, res, next);
})

server.get('/status', function(req, res, next) {
  var status = {
    info: {
      queued_jobs: '3',
    },
    next_job: {
      id: '1000',
      // path: "L 0 100 L 100 100 L 100 0 L 0 0"
      path: jobPath
    }
  };

  res.send(status);
})

server.get('/job/:id/finished', function(req, res, next) {
  res.send("finished job for " + req.params.id);
});

server.listen(8000, '0.0.0.0', function() {
  console.log('%s listening at %s', server.name, server.url);
});
