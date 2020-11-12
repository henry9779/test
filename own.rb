# puts 'you\'re good guy.' # 須在引號前面加反斜線才能正常顯示
# name = 'Henry'
# age = 32
# puts 'Hi,I\'m #{name}, and I #{age} years old' #'內容' 單引號不會解析變數,所以印出#{name}
# puts "Hi,I'm #{name}, and I #{age} years old" #"內容" 雙引號會解析變數,所以正常印出
# puts "C:\\Ruby" # 遇到反斜線亦同
# puts %q(我喜歡"為你自己學Ruby on Rails"這本書) # 當字串裡必須要雙引號時可用 %q() = '' %Q() = "" 
# puts "我喜歡\"為你自己學Ruby on Rails\"這本書" # 也可以在字串裡的引號前加反斜線
# puts "Frist line\nsecond line" # \n換行

# hello = "Hello" # 字串
# str = hello + " world"  # 字串連接
# puts str # 印出內容
# p str[0] # 印出字串第1個值
# p str[20] # 超出範圍印出空值nil
# str[6] = 'W' # 修改
# puts str 
# str << ' Peace.' #增加字元
# puts str 

# def calc_parking_fee(vehicle_type, parking_hour)
#   fee = 0
#   parking_hour = parking_hour.ceil

#   case vehicle_type
#   when :motocycle
#         fee = 20

#     when :car
#       if parking_hour <= 2
#         fee = parking_hour * 40
#       else
#         fee = (parking_hour -2) * 30 + 80

#       if fee > 500
#         fee = 500
#     end
#   end
#     return fee
# end
  
#   puts calc_parking_fee(:motocycle, 2)  # 印出 20
#   puts calc_parking_fee(:motocycle, 8)  # 印出 20
  
#   puts calc_parking_fee(:car, 1.5)      # 印出 80
#   puts calc_parking_fee(:car, 4)        # 印出 140
#   puts calc_parking_fee(:car, 5.5)      # 印出 200
#   puts calc_parking_fee(:car, 18)       # 印出 500





  p (1..100).select { |x| x.odd?}

  p (1..100).sum  

  p (1..100).to_a.shuffle[1..5]