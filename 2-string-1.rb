# 整数 n と、 n 個の整数 a_1, ..., a_n が改行区切りで与えられるので、
# 各 a_i (1 ≤ i ≤ n) の文字列としての長さを改行区切りで出力してください。

n = gets.to_i
a = n.times.map{gets.chomp.length}
puts a