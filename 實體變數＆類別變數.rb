#   username > 區域變數
#  $username > 全域變數
#  @username > 實體變數
# @@username > 類別變數
#===========實體變數=============
class Cat
    #attr_reader :name #同 getter功能,讀
    #attr_writer :name #同 setter功能,寫
    attr_accessor :name # get跟set功能都有
  
    def initialize(name) #將kitty kk代入
      @name = name #指定為實體變數,可以在實體自由取用
    end
  
    #def say_my_name #把東西拿出來 > getter
    #  return @name
    #end
  
    #def name=(new_name) #等號也是方法之一 > setter
    #  @name = new_name #重新定義實體變數
    #end
  end
  
  kitty = Cat.new("kitty kk")
  puts kitty.name
  #puts kitty.say_my_name #ruby不能直接叫屬性,要呼叫方法
  puts kitty.name=("naccy") #實體變數更改
  #可省略小括號同 puts kitty.name = "naccy"
  
  
  #ruby裡沒有屬性只有方法
  puts 1 + 2 #實際 1.+2 (1物件)(.呼叫)(+方法)(2參數)
  
  puts !!true # true.!.! >> true物件呼叫兩次! !為not之意
  
  #cc = CandidatesController.new # controller 生成 cc 實體
  #cc.action(:index) # 所以可以取用類別裡面的變數
  
  #=============類別變數================
  
  class Cat
    @@counter = 0 #類別變數
  
    def initialize #初始化
    @@counter += 1
    end
  
    def self.counter #定義類別方法
      return @@counter
    end
  
  end
  
  5.times { Cat.new }
  
  p Cat.counter #這樣無法呼叫需要定義類別方法