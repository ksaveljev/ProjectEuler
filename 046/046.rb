require 'prime'

class Integer
  def square?
    sqrt = Math.sqrt(self).to_i
    sqrt * sqrt == self
  end

 def prime_twice_square?
    Prime.each(self).select(&:odd?).map{|p| (self-p)/2}.any?(&:square?)
  end
end


p (3..10_000).step(2).find { |n| not n.prime? and not n.prime_twice_square? }
