dictionary = ["january","feburary","march","april","may","june","july","august","september","october","november","december"]

ran_num = rand(12)

required = dictionary[ran_num]
puts required
guess_key = ''
for i in 0..dictionary[ran_num].size-1 do
	guess_key+='X'
end
puts guess_key
i=0
count = 0
while i<3 
	flag = true
	guess = gets

	for j in 0..dictionary[ran_num].size-1 do
		if required[j] == guess[0] 
			if guess_key[j] == 'X'
				count+=1
				guess_key[j] = guess[0]
				flag = false
				break
			end
		end
	end
	if count >= dictionary[ran_num].size
		break
	end

	if flag
		i+=1
	end
end
flag = true
for i in 0..dictionary[ran_num].size-1 do
	if guess_key[i] == 'X'
		puts "you lost the game"
		flag = false
		break
	end
end

if flag
	puts "you won the game"
end
