const fs = require('fs')
const test = String(fs.readFileSync(String(process.argv[2])))

const HJSON = require('hjson')
const patterns = HJSON.parse(String(fs.readFileSync(process.argv[3] + '/searchPatterns.hjson')))

var found = []

patterns.forEach((i) => {
  if (new RegExp(i.pattern).test(test)) {
    found.push(i.name)
  }
})

console.log(JSON.stringify(found))
