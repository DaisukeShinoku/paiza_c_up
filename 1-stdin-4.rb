# 整数 n と n 個の数 a_1, ..., a_n が改行区切りで与えられます。
# 与えられた a_1, ..., a_n の中で最も大きい数を出力してください。

n = gets.to_i
a = n.times.map{gets.to_i}
puts a.max