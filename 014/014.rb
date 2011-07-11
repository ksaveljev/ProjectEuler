require 'memoize'

include Memoize

def chain_length(start)
  return 0 if start == 1
  if start.odd?
    1 + chain_length(3 * start + 1)
  else
    1 + chain_length(start / 2)
  end
end
memoize :chain_length

(1...1_000_000).max_by {|x| chain_length x}
