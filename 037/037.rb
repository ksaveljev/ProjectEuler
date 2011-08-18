require 'prime'

class Integer
  def left_prime?
    tmp = self
    while ((tmp /= 10) > 0)
      return false unless tmp.prime?
    end
    true
  end

  def right_prime?
    tmp = self
    while ((tmp %= 10 ** Math.log10(tmp).to_i) > 0)
      return false unless tmp.prime?
    end
    true
  end
end

puts Prime.each(1_000_000).select { |n| n > 10 and  n.left_prime? and n.right_prime? }.inject(0, :+)
