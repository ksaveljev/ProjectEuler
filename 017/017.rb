require 'linguistics'

puts (1..1000).map { |n| Linguistics::EN.numwords(n).split(//) }.flatten.count { |c| ('a'..'z').include?(c) } }
