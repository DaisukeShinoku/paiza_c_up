# n 人の人の名前 s_1, ..., s_n が与えられたのち、
# m 回の「攻撃」に関する情報が与えられます。各行は “p_i a_i” というフォーマットで与えられ、
# p_i はダメージを受けた人の名前 （s_1, ..., s_n のいずれか） 、 a_i は p_i が受けたダメージ数を表す数です。

# 最後に人名 S が与えられるので （S は s_1, ..., s_n のいずれか） 、 
# S が受けたダメージの合計を出力してください。なお、一度もダメージを受けていない人の合計ダメージは 0 とします。

n = gets.to_i
s = n.times.map{gets.chomp}

m = gets.to_i
arrays = m.times.map{gets.split(" ", 2)}

change = []
arrays.each{|array| change << [array[0], array[1].to_i]}
hash =  change.group_by(&:first).map{|k, v| [k, v.sum(&:last)]}.to_h

S = gets.chomp

if hash.key?(S)
  ans =  hash.fetch_values(S)
else
  ans = 0
end

if ans == nil
  puts 0
else
  puts ans
end

