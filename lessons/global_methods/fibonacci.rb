def fib(n)
  return 0 if n == 1
  return 1 if n == 2
  a = 0
  b = 1
  c = 0
  (3..n).each do
    c = a + b
    a, b = b, c
  end
  c
end

p fib(1)
p fib(2)
p fib(3)
p fib(4)
p fib(5)
p fib(6)
p fib(7)
p fib(8)
p fib(9)
p fib(10)
p fib(11)