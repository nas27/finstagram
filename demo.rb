#DATA TYPES

#puts 'this is a string'
#puts "this is a string"
#age = 2 + 4
#puts 5
 
#fizz buzz question

=begin
for i in (1..15)
    if i % 5 == 0 and i % 3 == 0
        puts "fizzbuzz"
    elsif i % 3 == 0
        puts "FIZZ"
    elsif i % 5 == 0
        puts "BUZZ" 
    else 
        puts i
    end
end
=end


def check_position(position)
    if position == "developer"
        puts 'here is your link #111'
    elsif position == 'student'
        puts 'here is your link #222'
    else
        puts 'here is your link #333'
    end
end

myPosition = 'student'

check_position(myPosition)



