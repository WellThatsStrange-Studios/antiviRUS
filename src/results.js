const fs = require('fs')
const HJSON = require('hjson')

const warn = HJSON.parse(String(fs.readFileSync('.dump.json')))

console.log('\x1b[97m============= RESULTS =============')
console.log('\x1b[34mResults from the free antivirus virusfree hacks not russian USA approved fortnite vbucks 2021 @ http://free-antivirus-virusfree-hacks-not-russian-USA-approved-fortnite-vbucks-2021.ru')
if (warn != []) {
  console.log('\x1b[31mFound viruses:')
} else {
  console.log('\x1b[31mFound no viruses')
}
console.log('\x1b[0m')

warn.forEach((i) => {
  console.log('File name: \x1b[33m' + i.file + '\x1b[0m')
  console.log('Viruses found: ')
  i.found.forEach((i, n) => {
    console.log('   ' + (n + 1) + '. \x1b[32m' + i + '\x1b[0m')
  })
})
