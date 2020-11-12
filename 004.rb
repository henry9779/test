File.readlines('score.csv').each do |line| #readline將資料讀成陣列
  data = line.split(',') #使用逗號拆開字串
  name = data.first.capitalize #capitalize字首大寫
  average = data [1..5].map { |n| n.to_i}.sum / 5.0

  puts "#{name}: #{average}"
end