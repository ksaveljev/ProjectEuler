1.upto(200000) do |x|
  found = true
  2.upto(6) do |i|
    unless x.to_s.split(//).sort.join == (i*x).to_s.split(//).sort.join
      found = false
      break
    end
  end

  if found
    puts x
    break
  end
end
