# Filename: Conditionals.rb
# Author: Tony Tran

name = 'Grader'

# If statements; then is optional.
if name == 'tony' then
    puts "You wrote this code"
elsif name == 'Grader'
    puts "You're grading this code"
else
    puts "You read this code"
end

# Unless statement
unless name == 'tony'
    puts "You are reading this code"
else
    puts "You wrote this code"
end

# Modifiers
raise ArgumentError, "You're not the grader" unless name == 'Grader'
print (0..10).to_a if name == 'Grader'
puts
    
# Case statement
case name
    when 'tony'
        puts "You created this code!"
    when 'Grader'
        puts "You're grading this code!"
    else
        puts "I don't know who you are!"
end

# Ternary Operator
result = (name == 'tony') ? "Your name is Tony" : "Your name is not Tony"
puts result
    
=begin
            Output
            ------

    You're grading this code
    You are reading this code
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    You're grading this code!
    Your name is not Tony
    => true

=end
        
