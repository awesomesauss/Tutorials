const fs = require('node:fs')

const data = fs.readFileSync('./fsd/Week3 practical/qn8/data.csv', 'utf-8')
const lines = data.split("\n")
const headers = lines[0].split(',')

const boxOfficeData=[];

for (let i = 1; i < lines.length; i++) {
    const values = lines[i].split(',');
    const movie = {};

    for (let j = 0; j < headers.length; j++) {
        movie[headers[j]] = values[j];
    }

    boxOfficeData.push(movie);
}

console.log(boxOfficeData);