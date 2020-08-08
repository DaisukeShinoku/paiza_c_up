# 10000 以上かつ 13 で割り切れるような最小の自然数を求めてください。

array = []

for num in 10001..99999 do
  if num % 13 == 0
    array << num
  end
end

puts array.min