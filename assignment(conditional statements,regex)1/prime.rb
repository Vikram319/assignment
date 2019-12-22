# frozen_string_literal: true

puts 'Enter the number'

n = gets.to_i

if n < 2
  print "#{n} is not prime if"
  return
else
  i = 2
  while i <= n / 2
    if (n % i).zero?
      print "#{n} is not prime"
      return
    end
    i += 1
  end
end

print "#{n} is prime"
