# 正整数 n と n 個の整数 a_1, ..., a_n が改行区切りで与えられるので、
# 各 a_i (1 ≤ i ≤ n) が 7 であるか判定し、
# a_1, ..., a_n の中に 7 がひとつでも含まれていた場合には "YES" を、
# そうでない場合（7 がひとつも含まれていなかった場合）には "NO" を出力してください。

n = gets.to_i
a = n.times.map{gets.to_i}

if a.any? { |t| t == 7 }
  puts "YES"
else
  puts "NO"
end