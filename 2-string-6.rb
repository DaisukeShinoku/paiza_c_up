# 時刻を表す長さ 5 の文字列 S が “XX:XX” の形式で与えられます。
# 与えられた時刻の 30 分後の時刻を同じ形式で出力してください。

a = gets.chomp.split(":")

b = []
b.push(a[0].to_i, a[1].to_i)

if b[1] < 30
  c = "#{'%02d' % b[0]}:#{'%02d' % (b[1] + 30)}"
else
  c = "#{'%02d' % (b[0] + 1) }:#{'%02d' % (b[1] - 30)}"
end

puts c