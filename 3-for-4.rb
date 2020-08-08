# m 個の文字 c_1, ..., c_m と、 n 個の文字列 S_1, ..., S_n が与えられます。
# 各 c_i （1 ≤ i ≤ m） について、各 S_j （1 ≤ j ≤ n） に c_i が出現するかをそれぞれ調べ、
# 出現する場合は "YES" を、そうでない場合には "NO" を、そのつど出力してください。

m = gets.to_i
c = m.times.map{gets.chomp}
n = gets.to_i
s = n.times.map{gets.chomp}

for i in 1..m do
  for e in 1..n do
    confirm = s[e-1].include?(c[i-1])
    if confirm == true
      puts "YES"
    else
      puts "NO"
    end
  end
end