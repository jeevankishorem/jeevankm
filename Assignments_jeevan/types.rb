#Create a method which should accept 2 arguments. If both arguments are :-
#i) numbers then sum it
#ii)string then concatenate it
#If both arguments are of different kind then display a appropriate error message using exception handling.
#

def conv(arg1,arg2)
if arg1=~/[0-9]/
arg1=Integer(arg1)
end

if arg2=~/[0-9]/
		arg2=Integer(arg2)
end

if arg1.class==arg2.class
puts arg1+arg2
else
	puts "enter both arguments of same type"
end		
		
end

puts "Enter the first argument"
argu1=gets.chomp

puts "Enter the second argument"
argu2=gets.chomp

puts conv(argu1,argu2)