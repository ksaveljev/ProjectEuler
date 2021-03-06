require 'romans'

# M-M-MONKEY PATCH!
class String
  def is_roman_numeral?
    true
  end
end
RomanNumerals.send(:remove_const, :MAX)
RomanNumerals.const_set(:MAX, 100500)

p File.open('roman.txt').
    each_line.
    map(&:chomp).
    map{|roman| roman.size - roman.to_i_roman.to_s_roman.size }.
    inject(:+)

