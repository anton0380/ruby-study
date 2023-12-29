function something() {
  let x = window.localStorage.getItem('aaa')
  x = +x +1;
  window.localStorage.setItem('aaa', x);
  alert(x);
}

function add_to_cart(id) {
  const key = 'product_' + id;
  let x = window.localStorage.getItem(key);
  x = +x + 1;
  window.localStorage.setItem(key, x);
}

