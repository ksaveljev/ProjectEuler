answer = (1..200000).find do |x|
  (1..6).map { |i| (x*i).to_s.split(//).sort }.uniq.size == 1
end

puts answer