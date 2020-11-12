#為什麼要物件化, 因為 block在 ruby裡沒辦法自己生存, 所以物件化

add_two = Proc.new { |n| n + 2}  #利用 Proc.new 物件化 block 定義給 add_two 變數
# add_two = lambda { |n| n + 2}   也可使用 lambda 物件化
# add_two = -> (n) { |n| n + 2}     亦有簡化方法

p add_two.call(3)                #使用 call 呼叫並代 3
#p add_two[3]    p add_two.(3)    p add_two.===(3) 其他使用方法