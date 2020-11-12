def calc_sum(param)
    if param.class == Array
      param.sum
    elsif param.class == Integer
      param
    else
      0
    end
  end
  
  puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
  puts calc_sum(5)                # 印出 5
  puts calc_sum(nil)              # 印出 0

  class String
    def greeting!
      "Hello, #{self.capitalize}"
    end
  end

  puts "kitty".greeting!  # 印出 Hello, Kitty

  $ rake -T
rake profile:generate  # 隨機產生三組個人資料