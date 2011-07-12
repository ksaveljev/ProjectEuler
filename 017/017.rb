require 'linguistics'

puts (1..1000).inject(0) { |sum, n| sum += Linguistics::EN.numwords(n).split(//).count { |c| ('a'..'z').include?(c) } }
