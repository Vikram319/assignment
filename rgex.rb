puts "Enter phone number"
ph_no = gets

if(/[1-9][0-9]{9}/.match(ph_no))
	print "valid number"
else
	print "number is not valid"
end

puts "Enter gender"
gen = gets
if(/[mfMF]/.match(gen))
	print "valid gender"
else
	print "gender is not valid"
end

puts "Enter name"
nam = gets
if(/\A[a-zA-Z]+[" "][a-zA-Z]+\Z/.match(nam))
	print "valid name"
else
	print "name is not valid"
end

puts "Enter email"
email = gets
if(/\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]*\@[a-zA-Z]+\.[a-zA-Z]+/.match(email))
	print "valid email"
else
	print "email is not valid"
end

puts "Enter amount"
amount = gets
if(/[0-9]*[.]?[0-9]+/.match(amount))
	print "valid amount"
else
	print "amount is not valid"
end