# frozen_string_literal: true

def chances_left(try)
  puts "chances left : #{try}\n"
end

def test; end

def find_hint(required)
  guess_key = ''
  required.length.times do
    guess_key += 'X'
  end
  guess_key
end

def game_logic(required, guess_key)
  i = 0
  count = 0
  loop do
    chances_left 3 - i
    guess = gets.chomp
    if required.index(guess)
      pos = required.index(guess)
      required[pos] = '@'
      count += 1
      guess_key[pos] = guess
      puts "current status: #{guess_key}"
    else
      i += 1
    end
    break if i == 3 || count >= required.length
  end
end

def game_result(guess_key)
  puts  'you lost game' if guess_key.index('X')
  puts  'you won game'
end

def game
  dictionary = %w[january feburary march april may june july august
                  september october november december]
  ran_num = rand(12)
  required = dictionary[ran_num]
  puts required
  guess_key = find_hint required
  puts "your hint is #{guess_key}"
  game_logic required, guess_key
  game_result guess_key
end

loop do
  game
  print 'want to play more?[y/n]'
  choice = gets.chomp
  break if choice == 'n'
end
