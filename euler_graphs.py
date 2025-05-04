import math

def a(n):
  sum = 0
  for i in range(1, n):
    sum += math.comb(n, i) * c(i) * a(n - i + 1)
  2 ** math.comb(n - 1, 2) - sum

def c(n):
  2 ** math.comb(n - 1, 2)
