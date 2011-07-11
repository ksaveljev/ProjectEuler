def palindromic?(elem, base)
  string = elem.to_s(base)
  string == string.reverse
end

n = 1_000_000
palindromes = (1...n).select{|elem| palindromic?(elem, 2) and palindromic?(elem, 10)}
sum = palindromes.inject(0, &:+)
print sum
