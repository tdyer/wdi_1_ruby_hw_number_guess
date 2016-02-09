# Your code goes here
number = rand(1...10)
tries = 0

while tries < 3
  puts 'Enter a number from 1 to 10:'
  guess = gets.chomp!.to_i
  tries = tries + 1

  if guess < number
    puts "#{guess} is too low. Try again."
  elsif guess > number
    puts "#{guess} is too high. Try again."
  else guess == number
    puts "Great! You guessed my number."
    break
  end
end

puts "You ran out of guesses! The correct number is #{number}" if tries == 3
