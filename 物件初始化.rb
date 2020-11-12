class Cat
  def initialize #定義初始化,實體一生成執行
    puts "HI"
  end
end



class Cat
    def initialize(name, age) #初始化(參數)
      @name = name # @ >> 定義實體變數,將參數指定給變數
      @age = age
      puts "Hi I\'m #{name}, and I #{age} years old" #實體一生成自動執行
    end
  end
  
  kitty = Cat.new("kitty", 18) #new後面的引數會傳回initialize