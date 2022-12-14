 //import express from 'express';

//  const express=require('express')
import express from 'express';
const app = express();
const start = Date.now()
app.get('/ping', function (req, res) {
  res.send('Pong');
});
app.get('/status', function (req, res) {
    const stop = Date.now()
    var timer=`${(stop - start)/1000} seconds`;
    res.send(JSON.stringify({serverUpTime: timer}))
  });
app.listen(3000,function () {
  console.log('Example app listening on port 3000!');
});