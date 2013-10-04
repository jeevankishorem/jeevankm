class Student
	@@count=0
	
	attr_accessor :name,:age,:gender,:roll_no
	def roll_no
	@roll_no
	end

	def name
	@name
	end
	
	def age
	@age
	end

	def gender
	@gender
	end

	def initialize(name,age,gender)
		@name= name
		@age= Integer(age)
		@gender= gender
		@@count+= 1
		@roll_no= @@count
	end

	def display()
		puts "\n #{@name}	#{@age}	#{@gender}	#{@roll_no}"
	end

end


	def ary_display(array_test)
	array_test.each do|n|
		n.display()
		end
	end

	def student_add(study,array_stud)
 		array_stud.push(study)
		
	end

	array_stud = Array.new()
aStudent=Student.new("Jayant",50,"F")
bStudent=Student.new("Jeevan",22,"M")
cStudent=Student.new("vipul",2,"M")
dStudent=Student.new("nikhil",27,"F")

student_add(aStudent,array_stud)
student_add(bStudent,array_stud)
student_add(cStudent,array_stud)
student_add(dStudent,array_stud)


array_sorting=Array.new()
puts " Input : "

ary_display(array_stud)
puts " sorted by name"

array_sorting=array_stud.sort_by{|stud|[stud.name]}
 
ary_display(array_sorting)

puts "sorted by age"
array_sorting=array_stud.sort_by{|stud|[stud.age]}
 
ary_display(array_sorting)
puts "sorted by gender"
array_sorting=array_stud.sort() { |x,y| y.gender <=> x.gender }
ary_display(array_sorting)
puts "sorted by roll_no"
array_sorting=array_stud.sort_by{|stud|[stud.roll_no]}
 
ary_display(array_sorting)