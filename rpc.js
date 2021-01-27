const newLocal = 'discord-rich-presence'
const client = require(newLocal)('803918048578371614')

const os = require('os')

client.updatePresence({
  state: 'http://free-antivirus-virusfree-hacks-not-russian-USA-approved-fortnite-vbucks-2021.ru',
  details: 'лучший бесплатный антивирус премиум-класса 2021',

  startTimestamp: Date.now(),

  largeImageKey: 'antivirus',
  largeImageText: 'Making the ' + os.hostname() + ' computer safe',

  smallImageKey: 'iapple',
  smallImageText: os.userInfo().username + ' безопасно!',

  instance: true
})
