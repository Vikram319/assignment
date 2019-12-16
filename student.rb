puts "Enter the grade"
n = gets.to_i
def grade(a)
	if a>=1 || a<=5
		return "elementary"
	elsif a>=6 || a<=8
		return "middle school"
	elsif a>=9 || a<=12
		return "high school"
	else
		return "college"
	end
end

puts grade n