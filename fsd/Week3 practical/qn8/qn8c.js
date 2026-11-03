const fs = require('node:fs')

const data = fs.readFileSync('./fsd/Week3 practical/qn8/data.csv', 'utf-8')
const lines = data.split("\n")
for(let i = 0; i < lines.length; i++){
    const columns = lines[i].split(",");
    for (const column of columns){
    console.log(column)
    }
}