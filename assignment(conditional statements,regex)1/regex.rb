# frozen_string_literal: true

puts 'Enter phone number'
ph_no = gets.chomp

if /[1-9][0-9]{9}/.match(ph_no)
  print 'valid number\n\n'
else
  print 'number is not valid\n\n'
end

puts 'Enter gender'
gen = gets.chomp
if /[mfMF]/.match(gen)
  print 'valid gender\n\n'
else
  print 'gender is not valid\n\n'
end

puts 'Enter name'
nam = gets.chomp
if /\A[a-zA-Z]+[" "][a-zA-Z]+\Z/.match(nam)
  print 'valid name\n\n'
else
  print 'name is not valid\n\n'
end

puts 'Enter email'
email = gets.chomp
if /\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]+\@[a-zA-Z]+\.[a-zA-Z]+/.match(email)
  print 'valid email\n\n'
else
  print 'email is not valid\n\n'
end

puts 'Enter amount'
amount = gets.chomp
if /[0-9]*[.]?[0-9]+/.match(amount)
  print 'valid amount\n\n'
else
  print 'amount is not valid\n\n'
end
