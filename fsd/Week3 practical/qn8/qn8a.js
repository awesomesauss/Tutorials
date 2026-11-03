const fs = require('node:fs');
fs.writeFile('./fsd/Week3 practical/qn8/myfile.txt', "Hello World", err => {
  if (err) {
    console.error(err);
  } else {
    // file written successfully
  }
});