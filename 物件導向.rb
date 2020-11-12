#class Cat #定義類別!!開頭大寫
  #def eat (food) #定義方法
    #puts "#{food} 好吃!"
  #end
#end

#kitty = Cat.new #類別產生實體
#kitty.eat "魚" #實體執行類別裡的方法


#========繼承範例========
#class Animal
#end

#class Monkey < Animal
  #def fivefingers #共同特徵
    #定義內容....
  #end
#end

#class Human < Monkey
#end

#me = Human.new
#me.fivefingers"..."

#==========練習==========
class Animal
    def eat (food)
      puts "吃#{food}"
    end
  
    def walk (place)
      puts "走去#{place}"
    end
  end
  
  class Dog < Animal
  end
  
  class Cat < Animal
  end
  
  puppy = Dog.new
  puppy.eat"罐頭"
  
  kitty = Cat.new
  kitty.walk"公園"
