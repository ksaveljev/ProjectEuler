class Integer
  def palindromic?
    self.to_s == self.to_s.reverse
  end

  def lychrel?
    result = true
    n = self

    49.times do
      n = n + n.to_s.reverse.to_i

      if n.palindromic?
        result = false
        break
      end
    end

    result
  end
end

p (1..9999).count { |n| n.lychrel? }
