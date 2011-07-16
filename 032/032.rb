class Array
  def to_int
    self.inject(0) { |result, n| result * 10 + n }
  end
end

result = []

(1..9).to_a.permutation.each do |permut|
  (0..3).each do |a|
    (a+1..6).each do |b|
      result << permut[b+1..-1].to_int if permut[0..a].to_int * permut[a+1..b].to_int == permut[b+1..-1].to_int
    end
  end
end

p result.uniq.inject(0, :+)
