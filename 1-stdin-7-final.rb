# 毎年 5 月 1 日に、自分が運営している会社の社員一覧表を作成しています。
# 表は年度ごとに更新され、社員の名前と年齢が載っています。
# ところで、会社のメンバーは昨年度から全く変わらず、
# 社員の誕生日は全員 7 月 7 日だったので、
# 前年度の一覧表の年齢欄をそれぞれ +1 するだけで今年度の表が作れることにパイザ君は気づきました。
# 昨年度の一覧表が与えられるので、今年度の一覧表を出力してください。

n = gets.to_i

arrays = n.times.map{gets.chomp.split(" ", 2)}

answers = []

arrays.each{ |array|
  answers.push([ array[0], array[1].to_i + 1])
}

answers.each{ |answer|
  puts answer.join(' ')
}