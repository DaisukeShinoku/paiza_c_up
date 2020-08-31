# n 人の人の名前 s_1, ..., s_n が与えられたのち、 m 回の「攻撃」に関する情報が与えられます。
# 各行は “p_i a_i” というフォーマットで与えられ、 p_i はダメージを受けた人の名前 （s_1, ..., s_n のいずれか） 、
# a_i は p_i が受けたダメージ数を表す数です。なお、一度もダメージを受けていない人の合計ダメージは 0 とします。

# それぞれの人が受けたダメージを、人の名前のアルファベットの辞書順に出力してください。

n = gets.to_i
s = n.times.map{gets.chomp}
s = s.sort

m = gets.to_i
arrays = m.times.map{gets.split(" ", 2)}

change = []
arrays.each{|array| change << [array[0], array[1].to_i]}
hash =  change.group_by(&:first).map{|k, v| [k, v.sum(&:last)]}.to_h

i = 0

until i >= s.length
  if hash.has_key?(s[i])
    ans = hash.find{|k,v| k == s[i]}
    puts "#{ans[1]}"
  else
    puts 0
  end
  i += 1
end