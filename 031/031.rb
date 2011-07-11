coins = 1, 2, 5, 10, 20, 50, 100, 200

dp = Array.new(coins.size+1) { Array.new(201, 0) }

0.upto(coins.size) { |i| dp[i][0] = 1 }

1.upto(coins.size) do |coin|
  1.upto(200) do |sum|
    dp[coin][sum] += dp[coin-1][sum]
    dp[coin][sum] += dp[coin][sum-coins[coin-1]] if sum >= coins[coin-1]
  end
end

puts dp[coins.size][200]
