# 有些功能不想讓外部存取,可以用封裝 encapsulation
# 有三種寫法 public / private / protected

class Cat
    def say_hello # 預設是 public 方法,外部可存取
      puts "HI" # puts 為私有方法
      gossip #沒有接收者及小數點
      self.yo
    end
  
    private #外部無法存取且不能指出接收者及小數點
    # 設定之後要遇到 public才會解除
    #  public 都放上面較好管理
    def gossip
      puts "say gossip"
    end
    private :gossip # 可指定方法為私有
  
    protected #外部無法存取但可指定接收者
    def yo
      puts "yo yo check it"
    end
  end
  
  kitty = Cat.new
  kitty.say_hello 
  # kitty為接收者receiver,say_hello為訊息message
  # 對kitty發送say_hello訊息
  # kitty.gossip #因為是私有所以會存取失敗