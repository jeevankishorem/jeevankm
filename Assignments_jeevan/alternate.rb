puts " Enter Your name"
name= gets.chomp

for i in 0...name.length
	name[i]=name[i].downcase
	if i%2==0
		name[i]=name[i].upcase!
	end
end
puts name