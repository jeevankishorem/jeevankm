def fact (n)
if n== 0
1
else
n* fact(n-1)
end
end

puts "Please enter the number"
num = gets
facto = fact (Integer(num))
puts "Factorial is #{facto}"
