require 'prime'

class Integer
  def prime_twice_square?
    result = false
    Prime.each(self) do |p|
      next unless (self - p).even?

      tmp = (self - p) / 2
      sq = Math.sqrt(tmp).to_i

      if sq * sq == tmp
        result = true
        break
      end
    end
    result
  end
end


p (3..10_000).step(2).find { |n| not n.prime? and not n.prime_twice_square? }
