# def count_sheeps(array)
#     #array.select { |word| word == true }.count
#     array.count(true)
#   end
  
#   array1 = [true,  true,  true,  false,
#             true,  true,  true,  true ,
#             true,  false, true,  false,
#             true,  false, false, true ,
#             true,  true,  true,  true ,
#             false, false, true,  true ]
                
#   puts count_sheeps(array1)  # 17

#   def sum_array(arr)
#     array = Array(arr)

#     if array.count > 2
#         array.sort[1..-2].sum
#     else
#         0
#     end
#   end
  
#   puts sum_array(nil)                      # 0
#   puts sum_array([])                       # 0
#   puts sum_array([3])                      # 0
#   puts sum_array([-3])                     # 0
#   puts sum_array([ 3, 5])                  # 0
#   puts sum_array([-3, -5])                 # 0
#   puts sum_array([6, 2, 1, 8, 10])         # 16
#   puts sum_array([6, 0, 1, 10, 10])        # 17
#   puts sum_array([-6, -20, -1, -10, -12])  # -28
#   puts sum_array([-6, 20, -1, 10, -12])    # 3

#   def merge_arrays(a, b)
#     #( a + b ).sort.uniq
#     (a | b).sort # | 兩組相加並去除重複
#   end
  
#   p merge_arrays([1, 3, 5], [2, 4, 6])  # [1, 2, 3, 4, 5, 6]
#   p merge_arrays([2, 4, 8], [2, 4, 6])  # [2, 4, 6, 8]

#   def abbrev_name(name)
#     name.split.map { |n| n[0].capitalize }.join('.')
#   end
  
#   puts abbrev_name("Sam Harris")      # S.H
#   puts abbrev_name("Patrick Feenan")  # P.F
#   puts abbrev_name("Evan Cole")       # E.C
#   puts abbrev_name("P Favuzzi")       # P.F
#   puts abbrev_name("David Mendieta")  # D.M

#   def square_or_square_root(array)
#     array.map do |x|
#         if Math.sqrt(x) % 1 == 0
#             #Math.sqrt(x).to_i
#             Integer.sqrt(x)
#         else
#             x ** 2
#         end
#     end
#   end
  
#   p square_or_square_root([4, 3, 9, 7, 2, 1])      # [2, 9, 3, 49, 4, 1]
#   p square_or_square_root([100, 101, 5, 5, 1, 1])  # [10, 10201, 25, 25, 1, 1]
#   p square_or_square_root([1, 2, 3, 4, 5, 6])      # [1, 4, 9, 2, 25, 36]

#   def check_exam(correct, answer)
#     score = correct.zip(answer).map do | c, a |
#         case a
#         when c
#             4
#         when ''
#             0
#         else
#             -1
#         end
#     end.sum

#     if score > 0
#         score
#     else
#         0
#     end

#     #if判斷可以用下列兩種    (score > 0)? score : 0
#     #                             [score, 0].max
#   end
  
#   puts check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])  # 6
#   puts check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])  # 7
#   puts check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])  # 16
#   puts check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])  # 0

#   def give_me_five
#     "heyhi".length
#   end  
  
#   puts give_me_five  # 5

# class Array
#     def second
#         self[1]
#     end
# end

#   p [1,2,3].second  # 2
#   p [].second       # nil
#   p [1].second      # nil


# def compute
#     if block_given?
#         yield
#     else
#         'Do not compute'
#     end
#   end
  
#   puts compute { "Block" }  # 印出 Block
#   puts compute              # 印出 Do not compute

#   class Ghost
#     def color
#         ['white', 'yellow', 'purple', 'red'].sample
#     end
#   end
  
#   ghost = Ghost.new
#   puts ghost.color          # 隨機印出 white, yellow, purple, red 這四種顏色的字串

#   class Cat
#     def initialize(name)
#         @name = name
#     end

#     def speak
#         puts "#{@name} meows."
#     end
#   end
  
#   kitty = Cat.new('Mr Whiskers')
#   kitty.speak   # 印出 Mr Whiskers meows.
  
#   nancy = Cat.new('Lamp')
#   nancy.speak   # 印出 Lamp meows.
  
#   sherly = Cat.new('$$Money Bags$$')
#   sherly.speak  # 印出 $$Money Bags$$ meows.

#   class Ball
#     def initialize(ball_type = 'regular')
#         @ball_type = ball_type
#     end

#     def ball_type
#         "#{@ball_type}"
#     end
#   end
  
#   ball1 = Ball.new
#   puts ball1.ball_type   # 印出 regular
  
#   ball2 = Ball.new("super")
#   puts ball2.ball_type   # 印出 super

#   def format_money(amount)
#     "$#{'%.2f' % (amount)}"
#   end
  
#   puts format_money(39.99)  # 印出 $39.99
#   puts format_money(39.90)  # 印出 $39.90
#   puts format_money(39)     # 印出 $39.00

#   def twice_as_old(father, son)
#         father - 2 * son
#   end
  
#   puts twice_as_old(36,7)   # 22
#   puts twice_as_old(65,30)  # 5
#   puts twice_as_old(42,21)  # 0
#   puts twice_as_old(22,1)   # 20
#   puts twice_as_old(29,0)   # 29

#   def powers_of_two(n)
#     (0..n).map { |x| 2 ** x}
#   end
  
#   p powers_of_two(0)   # [1]
#   p powers_of_two(1)   # [1, 2]
#   p powers_of_two(4)   # [1, 2, 4, 8, 16]

#   def rock_paper_scissor(p1, p2)
#     win_table = {'rock' => "scissors", 'scissors' => 'paper', 'paper' => 'rock'}
#     if p1 == p2
#         'Draw!'
#     else
#         if win_table.has_key?(p1) && win_table[p1] == p2
#             "Player 1 won !"
#         else
#             "Player 2 won !"
#         end
#     end
#   end
  
#   puts rock_paper_scissor('rock', 'scissors')      # 印出 Player 1 won!
#   puts rock_paper_scissor('paper', 'rock')         # 印出 Player 1 won!
#   puts rock_paper_scissor('paper', 'scissors')     # 印出 Player 2 won!
#   puts rock_paper_scissor('rock', 'paper')         # 印出 Player 2 won!
#   puts rock_paper_scissor('rock', 'rock')          # 印出 Draw!
#   puts rock_paper_scissor('scissors', 'scissors')  # 印出 Draw!

#   # last = 上次日期，today = 今天日期，cycle_length = 週期

require 'Date'
def is_period_late?(last, today, cycle_length)
    Date.parse(today) - Date.parse(last) > cycle_length
  end
  
  puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
  puts is_period_late?('2016/6/13', '2016/7/16', 28) # true
  puts is_period_late?('2016/6/13', '2016/7/16', 35) # false
  puts is_period_late?('2016/6/13', '2016/6/29', 28) # false
  puts is_period_late?('2016/7/12', '2016/8/9', 28)  # false
  puts is_period_late?('2016/7/12', '2016/8/10', 28) # true
  puts is_period_late?('2016/7/1', '2016/8/1', 30)   # true
  puts is_period_late?('2016/6/1', '2016/6/30', 30)  # false
  puts is_period_late?('2016/1/1', '2016/1/31', 30)  # false
  puts is_period_late?('2016/1/1', '2016/2/1', 30)   # true