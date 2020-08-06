# n 個の数 a_1, … , a_n が与えられます。
# 与えられた数を小さい順に改行区切りで出力してください。

n = gets.to_i
a = n.times.map{gets.to_i}
puts a.sort!