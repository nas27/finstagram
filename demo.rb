#FizzBuzz Code Group Question
 
#fizz buzz question
#comment block, can also do % by 15 instead of 3 and 5
=begin
    for num in (1..15)
        if num % 5 == 0 and num % 3 == 0
            puts "FizzBuzz"
        elsif num % 3 == 0
            puts "FIZZ"
        elsif num % 5 == 0
            puts "BUZZ" 
        else 
            puts num
        end
    end
=end

#put it into a method that takes a range as argszs
#TRY method .each_char do |letter|
#add to uppercase to cater for lowercase
    def yellowpages(value)
        if value.length != 10
            puts "sorry your symbols are the wrong length"
            return false
        else
            value.upcase!
            chars = value.split("")
                      
            $num = ""
            for i in 0..chars.length do                    
                case chars[i]
                    when "A", "B", "C"
                        $num += "2"
                    when "D", "E", "F"
                        $num += "3"
                    when "G", "H", "I"
                        $num += "4"
                    when "J", "K", "L"
                        $num += "5"
                    when "M", "N", "O"
                        $num += "6"
                    when "P", "Q", "R", "S"
                        $num += "7"
                    when "T", "U", "V"
                        $num += "8"
                    when "W", "X", "Y", "Z"
                        $num += "9"
                end             
            end
        #print final phone num      
        puts $num
        end
    end

yellowpages("fishyCAKES")




