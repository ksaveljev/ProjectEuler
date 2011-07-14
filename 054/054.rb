require 'ruby-poker'

puts gets(nil).split.each_slice(5).each_slice(2).count { |hands| PokerHand.new(hands.first) > PokerHand.new(hands.last) }
