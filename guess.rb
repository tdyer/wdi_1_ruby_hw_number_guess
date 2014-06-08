puts 'Welcome to Number Guesser Pro 2003'
puts

max_number = 10
secret_number = rand(max_number) + 1

puts "I'm thinking of a number between 1 and #{max_number}..."

guess = 0
guesses_left = 3

while guess != secret_number && guesses_left > 0
  puts

  case
  when guess == 0 then puts 'Guess the number:'
  when guess < secret_number then puts "It's higher than #{guess}, guess again:"
  when guess > secret_number then puts "It's lower than #{guess}, guess again:"
  end

  puts "(#{guesses_left} guesses left)"

  guess = gets.chomp.to_i
  until guess >= 1 && guess <= max_number
    puts "The number is between 1 and #{max_number}! Try again:"
    guess = gets.chomp.to_i
  end
  guesses_left -= 1
end

puts
if guess == secret_number
  puts 'You got it! Congratulations!'
else
  puts "Nice try, but the number was #{secret_number}."
end
