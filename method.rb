#=======實體方法========
class Cat
    def say_hello #實體方法>在實體上執行的
      puts "Hello!!!"
    end
  end
  
  kitty = Cat.new
  kitty.say_hello #作用在實體
  
  #=======類別方法========
  class Cat
    def self.all #self 定義類別本身
      puts "All the cats"
    end
  end
  
  Cat.all #作用在類別
  