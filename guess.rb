#Let's user guess the random number that's generated
random_number = rand(10)
num_guesses = 0
puts "You have three tries to guess my number between 1-10:"
your_guess = gets.chomp!.to_i
puts "Your guess is #{your_guess}"
until your_guess == random_number
  num_guesses += 1
  break if num_guesses == 3
  puts "Sorry, please guess again:"
  your_guess = gets.chomp!.to_i
end
if your_guess == random_number
  puts "Way to go, you WIN!!!"
else
  puts "Sorry - no more guesses buster!"
  puts "The correct number was: #{random_number}"
end
