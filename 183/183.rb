def only_2_and_5?(n)
  n /= 2 while n % 2 == 0
  n /= 5 while n % 5 == 0
  n == 1
end

def d(n)
  t = (n / Math::E).floor
  k = (([t-2, 1].max)..(t+2)).max_by {|x| f(n, x)}
  only_2_and_5?(k / k.gcd(n)) ? -n : n
end

def f(n, k)
  #  p [n, k]
  k * Math.log(1.0 * n / k)
end

N = 10000

print (5..N).map{|n| d(n)}.inject(:+)
