module Flyable #設定模組,模組沒有繼承功能也無法new
    def fly
      puts "I believe I can fly!"
    end
  end

  class Cat
    include Flyable #i nclude 引入模組,實體方法
    #extend Flyable 擴充模組,類別方法,Cat.fly可以執行
  end
  
  kitty = Cat.new
  kitty.fly
  
  #=========練習===========
  module Flyable
    def fly
      puts "I can fly!!"
    end
  end
  
  class Animal
  end
  
  class Bird < Animal
    include Flyable
  end
  
  yoyo = Bird.new
  yoyo.fly
  
  #========namespace功能============
  
  module A
    class Cat
    end
  end
  
  module B
    class Cat
    end
  end
  
  kitty = A::Cat.new #兩個冒號呼叫模組的意思
  
  #=========冒號用途===========
  
  #has_many :name 符號
  #{name: "悟空", age: 18} key
  