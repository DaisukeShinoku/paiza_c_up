input = gets.chomp.split(" ", 3)

N = input[0].to_i

M = input[1].to_i

K = input[2].to_i

arrays = N.times.map{gets.chomp.split(" ", M)}

i = 0
until i >= N
  count = arrays[i].count(K.to_s)
  puts count
  i += 1
end