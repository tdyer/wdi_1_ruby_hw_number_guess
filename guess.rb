puts 'Welcome to Number Guesser Pro 2003'
puts

max_number = 10
secret_number = rand(max_number) + 1

puts "I'm thinking of a number between 1 and #{max_number}..."
puts 'Guess the number:'

guess = gets.chomp.to_i

if guess == secret_number
  puts 'You got it! Congratulations!'
else
  puts "Nice try, but the number was #{secret_number}."
end
