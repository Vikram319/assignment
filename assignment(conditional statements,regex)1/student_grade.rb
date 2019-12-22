# frozen_string_literal: true

puts 'Enter the grade'
grade = gets.to_i

case grade
when 1..5 then 'elemantry school'
when 6..8 then 'middle school'
when 9..12 then 'high school'
else 'college'
end
