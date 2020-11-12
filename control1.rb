def test_two
    if yield (3) #yield 讓完把 3 代進 n
      puts "yes"
    else
    puts "no"
    end
  end
  
  test_two {|n|
    n == 2 # == 是否為
  }
  
  def my_select(list)
    result = [] #空陣列
    list.each do |n|
      result << n if yield (n) #如果為單數放入空陣列
    end
    result
  end
  p my_select ([1, 2, 3, 4, 5]) { |i| i.odd? }
  #自己做選取,選出單數
  
  def say_hello_to(someone)
    yield someone
  end
  say_hello_to("悟空") { |name|
    puts "你好!#{name}!"
  } #先傳到someone再被丟到絕對值再印出來
  
  def hi
    yield if block_given? #是否有值
    end
  hi {puts "hi"}
  
  add_two = Proc.new { |n| n + 2 } #Proc.new物件化block
  #另一個物件化方式 add_two = lambda { |n| n + 2}
  # add_two = -> (n) { n + 2}
  p add_two.call(3) #呼叫Proc代入3
  #其他呼叫方法p add_two[3] add_two.(3) add_two.===(3)
  