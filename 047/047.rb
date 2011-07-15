require 'prime'

p (1..200_000).map { |n| [n, n.prime_division.size] }.inject([0,0]) { |result, e| result.first > 3 ? result : (e.last > 3 ? [result.first+1, e.first] : [0, e.first]) }.last - 3
