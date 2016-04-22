# Filename: Loops.rb
# Author: Tony Tran

# While
puts "While: "
i = 0
while i != 3 do
    print "#{i} "
    i += 1
end
puts

# Until
puts "Until: "
i = 0
until i == 3 do
    print "#{i} "
    i += 1
end
puts

# For In
puts "For: "
array = [1,2,3]
for value in array
    print (value * 2).to_s + " "
end
puts

# Loop
puts "Loop: "
i = 0
loop do
    if i > 8
        break
    end
    print "#{i} "
    i += 2
end
puts

# While Modifier
puts "While Modifier: "
i = 0
i += 10 while i < 100
puts i

# Until Modifier
puts "Until Modifier: "
i = 0
i += 10 until i >= 100
puts i

# Upto
puts "Upto: "
1.upto(3) {|i| print "#{i} "}
puts

# Downto
puts "Downto: "
3.downto(1) {|i| print "#{i} "}
puts

# Each
puts "Each: "
array = [1,2,3]
array.each {|x| print (x**2).to_s + " "}
puts

# Each With Index
puts "Each With Index: "
hash = Hash.new
array = ["zero", "one", "two"]
array.each_with_index {|item, index| hash[item] = index}
p hash

# Times Inplicit Counter
puts "Times: "
3.times {print "7"}
puts

# Times Explicit Counter
puts "Times: "
3.times do |i|
    print i
end
puts

# Map or Collect
puts "Map: "
array = [2,4,6]
print array.map {|x| x * x }
puts 

puts "Collect: "
print array.collect {|x| x * x }
puts

# Select
puts "Select: "
age = (1..30).to_a
print age.select {|x| x >= 21 } 
puts

# Reject
puts "Reject: "
print age.reject {|x| x < 21 }
puts

# Inject
puts "Inject: "
print age.reject {|x| x >= 21 }
puts

# Step
puts "Step: "
print 0.step(20, 5).to_a
puts
array = (0..20)
print array.step(5).to_a
puts

=begin
        Output
        ------
        While:
        0 1 2
        Until:
        0 1 2
        For:
        2 4 6
        Loop:
        0 2 4 6 8
        While Modifier:
        100
        Until Modifier:
        100
        Upto:
        1 2 3
        Downto:
        3 2 1
        Each:
        1 4 9
        Each With Index:
        {"zero"=>0, "one"=>1, "two"=>2}
        Times:
        777
        Times:
        012
        Map:
        [4, 16, 36]
        Collect:
        [4, 16, 36]
        Select:
        [21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
        Reject:
        [21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
        Inject:
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
        Step:
        [0, 5, 10, 15, 20]
        [0, 5, 10, 15, 20]  

=end