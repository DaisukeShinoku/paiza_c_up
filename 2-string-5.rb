# 時刻を表す長さ 5 の文字列 S が “XX:XX” の形式で与えられます。
# 入力された時刻を時と分に分け、時、分の順番で改行区切りで出力してください。

s = gets.chomp.split(":")
a = s[0].to_i
b = s[1].to_i
puts a
puts b