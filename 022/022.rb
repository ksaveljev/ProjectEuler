puts gets(nil).split(/,/).sort.collect.with_index { |name, i| (i + 1) * name[1..-2].each_byte.inject(0) { |sum, c| sum += c - 'A'.ord + 1 } }.inject(0, &:+)
