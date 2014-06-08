puts 'Welcome to Number Guesser Pro 2003'
puts

max_number = 10
secret_number = rand(max_number) + 1

puts "I'm thinking of a number between 1 and #{max_number}..."

guess = 0

while guess != secret_number
  case
  when guess == 0 then puts 'Guess the number:'
  when guess < secret_number then puts "It's higher than #{guess}, guess again:"
  when guess > secret_number then puts "It's lower than #{guess}, guess again:"
  end

  guess = gets.chomp.to_i
end

puts 'You got it! Congratulations!'
