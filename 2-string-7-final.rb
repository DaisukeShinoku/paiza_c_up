# パイザ君の家の前では毎週日曜日に工事が行われます。この先 N 週間、工事が日曜日の何時に始まり、どれくらいの時間続くのかは分かっています。
# パイザ君は工事の間は家を離れようと思っているので、それぞれの日に工事が何時に終わるのかを知りたいと思いました。

# 工事が N 週間続くとして、各週日曜日の工事が始まる時刻と、工事が何時間何分続くのかに関する情報が与えられるので、
# 工事が終わる時刻を 00:00 から 23:59 までの 24 時間表記で出力してください
# （ここで「工事が終わる時刻」とは、工事が h 時間 m 分続くとした場合、工事が始まった時刻の h 時間 m 分後を指します）。

# (1..gets.to_i).each {
#   t, h, m = gets.split(" ")
#   th, tm = t.split(":")

#   rh = th.to_i + h.to_i
#   rm = tm.to_i + m.to_i
#   printf("%02d:%02d\n", (rh + rm / 60) % 24, rm % 60)
# }

n = gets.to_i

arrays = n.times.map{gets.chomp.split(" ", 3)}

t = arrays[0]
h = arrays[1]
m = arrays[2]

puts t

th, tm = t.split(":")

rh = th.to_i + h.to_i
rm = tm.to_i + m.to_i

printf("%02d:%02d\n", (rh + rm / 60) % 24, rm % 60)
