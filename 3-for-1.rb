# 正整数 n と、 n 個の整数 a_1, ..., a_n が半角スペース区切りで与えられます。
# 与えられた整数の中に 3 の倍数がいくつあるかを数え、出力してください。

n = gets.to_i
a = gets.chomp.split(" ", n)

b = a.map(&:to_i)

ans = 0

for num in b
  if num % 3 == 0
    ans += 1
  end
end

puts ans