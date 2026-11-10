const fs = require('node:fs');
fs.readFile('./fsd/Week3 practical/qn8/myfile.txt', 'utf8', (err, data) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log(data);
});