# パイザ君と霧島京子は最初どちらも数 1 をもっています。
# パイザ君は自分の番が来ると、自分のもっている数の a 倍を霧島京子の数に足してあげます。
# 霧島京子は自分の番が来ると、自分のもっている数を b で割った余りをパイザ君の数に足してあげます。
# この手続きをパイザ君の番から始めて、霧島京子の数がnより大きくなるまで繰り返します。

# 手続きが終わったときのパイザ君の操作回数を求めてください。

n = gets.to_i
input = gets.chomp.split(" ", 2)
a = input[0].to_i
b = input[1].to_i

paiza = 1
kyoko = 1
count = 0

until kyoko > n do
  kyoko += paiza * a
  paiza += kyoko % b
  count += 1
end

puts count