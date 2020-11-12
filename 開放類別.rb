# Ruby 特有,開放類別 open class
#有兩個同名類別時,會融合在一起(方法除外)

class Cat
    def hello
      puts "hello"
    end
  end
  
  class Cat
    def world
      puts "hello, world"
    end
  end
  
  kitty = Cat.new
  kitty.hello
  kitty.world
  
  #連內建類別都可以改
  
  class String #定義完後所有字串都可以使用
    def say_hello
      return "hi, #{self}" #return可省略,self是字串自己
    end

    def length #蓋掉原本length功能
      100
    end
  end
  
  puts "悟空".say_hello
  puts "悟飯".say_hello
  puts "123".length


  