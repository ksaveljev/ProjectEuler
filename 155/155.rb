require 'rational'
require 'memoize'

include Memoize

def d(n)
  return [Rational(1)] if n == 1
  total = []
  for i in 1...n
    subset_1 = d(i)
    subset_2 = d(n-i)
    subset_1.product(subset_2).each do |c_1, c_2|
      total << (c_1 + c_2)
      total << (c_1 * c_2 / (c_1 + c_2))
    end
  end
  total.uniq
end
memoize :d

p (1..18).map{|n| d(n)}.flatten.uniq.size
