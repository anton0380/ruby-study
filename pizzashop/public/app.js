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

  update_orders_input();
  update_orders_button();
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

function cart_get_orders() {
  let orders = '';
  for (let i = 0; i < window.localStorage.length; i ++) {
    let key = window.localStorage.key(i);
    let value = window.localStorage.getItem(key);
    if (key.indexOf('product_') == 0) {
      orders += key + '=' + value + ',';
    }
  }
  return orders;
}

function update_orders_input() {
  let orders = cart_get_orders();
  $('#orders_input').val(orders);
}

function update_orders_button() {
  let text = 'Cart (' + cart_get_number_of_items() + ')';
  $('#orders_button').val(text);
}

function cancel_order() {
  window.localStorage.clear();
  update_orders_input();
  update_orders_button();
  $('#cart').text('Your cart is now empty');
  return false;
}