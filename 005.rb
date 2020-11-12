language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']

language.select { |lang| lang[0] == 'P'}
p language.select { |lang| lang.start_with?('P') }

language.sort_by { |word| word.length }.first
p language.min { |a, b| a.length <=> b.length }

require 'date' #引入標準函式庫

def calc_age(birthday)
    (( Date.today - Date.parse(birthday) ).to_i / 365.0).ceil #parse轉換成日期
  end
  
  puts calc_age('1985/1/2')  # 印出 35
  puts calc_age('1997/8/28') # 印出 22

  def is_valid_company_no?(serial)
    if serial.length != 8
        "格式不符"
    else
        params = [1,2,1,2,1,2,4,1]
        checksum = 0
        serial.split('').each.with_index do |s, index|
            checksum += (s.to_i * params[index]).divmod(10).sum
        end

        if checksum % 10 == 0
        return true
        elsif serial[6] == '7' && (checksum + 1) % 10 == 0
        return true
        else
        return false
        #可寫成return (checksm % 10 == 0) || (serial[6] == '7' && (checksum + 1) % 10 == 0)
        end
    end
end
  
  puts is_valid_company_no?('2453680')  # 印出「格式不符」字樣
  puts is_valid_company_no?('24536806') # 印出 true
  puts is_valid_company_no?('12222539') # 印出 false