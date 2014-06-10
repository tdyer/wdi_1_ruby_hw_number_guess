puts 'Welcome to Number Guesser Pro 2003 Service Pack 2'
puts
puts 'Enter the maximum number to guess:'

max_number = gets.chomp.to_i
until max_number >= 10
  puts 'Sorry, the maximum must be 10 or higher. Try again:'
  max_number = gets.chomp.to_i
end

continue_playing = true

while continue_playing
  puts
  puts "I'm thinking of a number between 1 and #{max_number}..."

  secret_number = rand(max_number) + 1
  guesses_left = Math.log(max_number * 3).round
  guess = nil

  while guess != secret_number && guesses_left > 0
    puts

    case
    when guess == nil then puts 'Guess the number:'
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

  puts 'Enter "y" to play again or "n" to quit:'
  continue_playing = (gets.chomp.downcase == 'y')
end
