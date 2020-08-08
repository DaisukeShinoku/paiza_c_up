# n 人の人に関して、それぞれの人の名前と財産が与えられます。
# その後に人名 S が与えられるので （S は最初に与えられた名前のうちのいずれか） 、
#  S の財産を表す整数を出力してください。

n = gets.to_i

arrays = n.times.map{gets.split(" ", 2)}

s = gets.chomp

ans = arrays.find{ |array| array[0] == s }

puts ans[1]