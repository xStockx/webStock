var express = require('express');
var app = express();
app.use('/css',express.static(__dirname+'/css'));
app.use('/img',express.static(__dirname+'/img'));
console.log(__dirname);
app.get('/', function (req, res) {
  res.sendFile(__dirname+'/index.html');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});

