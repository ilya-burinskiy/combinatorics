MOD = 1000000007

def b(n)
  fib(2 * n) % MOD
end

def fib(n)
  fib_iter(1, 0, 0, 1, n)
end

def fib_iter(a, b, p, q, count)
  return b if count == 0

  if count % 2 == 0
    fib_iter(
      a,
      b,
      p * p + q * q,
      2 * p * q + q * q,
      count / 2
    )
  else
    fib_iter(
      b * q + a * q + a * p,
      b * p + a * q,
      p,
      q,
      count - 1
    )
  end
end

n = gets.to_i
puts b(n)
