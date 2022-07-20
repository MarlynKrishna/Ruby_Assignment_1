
puts " Enter a number: "
number = gets.to_i
a= number/2
while number/2< number
for i in 1...number
puts "*" *( number *2)
print " " * (number-2)
print "(" * i
puts ")" * i
number -= 1
end
end
