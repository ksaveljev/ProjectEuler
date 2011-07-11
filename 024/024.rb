puts (0..9).to_a.permutation.each_with_index.find { |_, i| i == 999_999 }.first.join
