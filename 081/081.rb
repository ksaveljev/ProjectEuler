matrix = gets(nil).split(/[,\n]/).map(&:to_i).each_slice(80).to_a

(1..79).each { |n| matrix[0][n] += matrix[0][n-1]; matrix[n][0] += matrix[n-1][0] }

(1..79).each do |a|
  (1..79).each do |b|
    matrix[a][b] += [matrix[a-1][b], matrix[a][b-1]].min
  end
end

p matrix[79][79]
