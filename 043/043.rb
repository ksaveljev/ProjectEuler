class Array
  def to_int
    self.inject(0) { |result, e| result * 10 + e }
  end

  def unusual_pandigital?
    d = 2, 3, 5, 7, 11, 13, 17
    (1..7).each do |n|
      return false unless self[n..n+2].to_int % d[n-1] == 0
    end
    true
  end
end

p (0..9).to_a.permutation.select { |p| p.first > 0 and p.unusual_pandigital? }.inject(0) { |sum, e| sum + e.to_int }
