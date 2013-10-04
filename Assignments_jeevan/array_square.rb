puts "Please enter the length of the array"
array_length= Integer(gets)

input_array= Array.new(array_length)
output_array= Array.new(array_length)

for i in 0..(array_length-1)
input_array[i]= Integer(gets)
end

for i in 0..(array_length-1)
output_array[i]= input_array[i]* input_array[i]
end

for i in 0..(array_length-1)
puts output_array[i]
end
