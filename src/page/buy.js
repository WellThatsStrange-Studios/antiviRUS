console.log('loaded: ' + getParameterByName('tarif'))

if (getParameterByName('tarif') === 'basic') {
  console.log('основной')
  document.getElementById('type').innerHTML = 'основной'
  document.getElementById('price').innerHTML = '45 999 Ru.'
  document.getElementById('features').innerHTML = '<b>функции: </b>Все'
} else if (getParameterByName('tarif') === 'pro') {
  console.log('профессиональный')
  document.getElementById('type').innerHTML = 'профессиональный'
  document.getElementById('price').innerHTML = '99 999 Ru.'
  document.getElementById('features').innerHTML = '<b>функции: </b>Все + Вы профессионал + дополнительный портрет Владимира Путина'
} else if (getParameterByName('tarif') === 'proplus') {
  console.log('профессиональный++')
  document.getElementById('type').innerHTML = 'профессиональный++'
  document.getElementById('price').innerHTML = '129 999 Ru.'
  document.getElementById('features').innerHTML = '<b>функции: </b>Все + Вы профессионал + дополнительный портрет Владимира Путина + иммунитет кгб + довольны поддержкой нашего премиального антивируса'
} else if (getParameterByName('tarif') === 'platinum') {
  console.log('платина')
  document.getElementById('type').innerHTML = 'платина'
  document.getElementById('price').innerHTML = '199 999 Ru.'
  document.getElementById('features').innerHTML = '<b>функции: </b>Все + Вы профессионал + дополнительный портрет Владимира Путина + иммунитет кгб + довольны поддержкой нашего премиального антивируса + бесплатные кроссовки adadis стоимостью 69 000 ру.'
} else {
  window.location.replace("buy.html")
}
