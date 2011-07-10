result = 0

100.upto(999) { |a|
  100.upto(999) { |b|
    n = a * b
    result = n if n.to_s == n.to_s.reverse and n > result
  }
}

puts result
