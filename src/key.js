const fs = require('fs')
const Crypto = require('crypto')

if (Crypto.createHash('sha256').update(fs.readFileSync(process.argv[2] + '/antiviRUS.key')).digest('base64') === 'UdIX5LYn7eTR7PPU0bKJcIpER9rwvfqBml17USgk0P8=') {
  process.exit(0)
} else {
  process.exit(1)
}
