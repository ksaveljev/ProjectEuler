triangle = Array.new(10_000) { |n| n * (n + 1) / 2 }

def value(word)
  word.each_byte.inject(0) { |sum, b| sum += b - 64 }
end

puts gets(nil).split(/,/).collect { |str| value(str[1..-2]) }.select { |v| triangle.include?(v) }.count
