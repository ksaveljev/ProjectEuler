require 'prime'

Prime.each(500_000).each_with_index.find{|_, i| i == 10_000}.first
