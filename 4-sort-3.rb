# 正整数 n が与えられ、数のペアが n 個与えられます。
# 各ペアの最初の数はりんごの個数を、その次の数はバナナの個数を表しています。
# これらの数のペアを以下の規則に従って、偉い順に並び替えてください。

# 1. ふたつのペアのりんごの数が異なる場合、りんごの数が多い方が偉い（この際、バナナの数は関係ない）。
# 2. りんごの数が同じである場合、バナナの数が多い方が偉い。

n = gets.to_i

arrays = n.times.map{gets.chomp.split(" ", 2)}

arr = []

arrays.each{|array| arr << [array[0].to_i, array[1].to_i] }

ans =  arr.sort.reverse {|a, b| (a[0] <=> b[0]).nonzero? || (a[1] <=> b[1])}

ans.each { |x|
  puts x.join(" ")
}