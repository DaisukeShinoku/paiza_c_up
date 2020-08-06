# 文字 a と文字列 S が与えられるので、
# S に a が含まれているかどうか判定し、
# 含まれている場合には “YES” を、
# そうでない場合には “NO” を出力してください。

a = gets.chomp
s = gets.chomp
ans = s.include?(a)

if ans === true
  puts "YES"
else
  puts "NO"
end