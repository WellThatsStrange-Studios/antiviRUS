function pay() {
  document.getElementById('loading').style.display = 'block'
  document.getElementById('status').style.display = 'block'

  var acc = String(document.getElementById('account').value).split(' ').join('')

  document.getElementById('status').innerHTML += 'Connecting to transfer.vodka.bestbank.ru/t.php?i=<b>' + acc + '</b><br>'
  if (acc.length != 16) {
    document.getElementById('status').innerHTML += 'Conection not sucesfull - Returner [x16] => Invalid account<br>'
    setTimeout(() => {
      document.getElementById('status').innerHTML = ''
      document.getElementById('loading').style.display = 'none'
      document.getElementById('status').style.display = 'none'
    }, 5000)
  } else {
    document.getElementById('status').innerHTML += 'Sucess! Connected to transfer.vodka.bestbank.ru/c.php?id=466549:6958<br>'


    document.getElementById('status').innerHTML += 'Starting money transfer<br>'
    setTimeout(() => {
      document.getElementById('status').innerHTML += 'Transfered [25%]<br>'
    }, 1000)
    setTimeout(() => {
      document.getElementById('status').innerHTML += 'Transfered [50%]<br>'
    }, 2000)
    setTimeout(() => {
      document.getElementById('status').innerHTML += 'Transfered [75%]<br>'
    }, 3000)
    setTimeout(() => {
      document.getElementById('status').innerHTML += 'Transfered [100%]<br>'
    }, 6969)
    setTimeout(() => {
      document.getElementById('status').innerHTML += 'Transfer finnished sucesfully. Downloading in 3 seconds<br>'
    }, 7000)
    setTimeout(() => {
      document.getElementById('downloadlink').click()
    }, 10000)
  }
}
