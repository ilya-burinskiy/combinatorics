# b(n) = i * b(n - i), i = 1..(n - 1)
$cache = { 0 => 0, 1 => 1 }

def b(n)
  return $cache[n] if $cache.include?(n)

  b_n = 0
  (1..(n - 1)).each do |i|
    b_ni = if $cache.include?(n - i)
             $cache[n - i]
           else
             b(n - 1)
           end
    b_n += i * b_ni
  end
  $cache[n] = b_n

  b_n
end

n = gets.to_i
puts b(n) % 1000000007
