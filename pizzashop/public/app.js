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

function cart_get_number_of_items() {
  let cnt = 0;
  for (let i = 0; i < window.localStorage.length; i ++) {
    let key = window.localStorage.key(i);
    let value = window.localStorage.getItem(key);
    if (key.indexOf('product_') == 0) {
      cnt += +value;
    }
  }
  return cnt;
}

