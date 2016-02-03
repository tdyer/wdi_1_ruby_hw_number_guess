# Your code goes here
number = rand(1...10)
guess = 9
tries = 1
max_tries = 4

while guess != number
  puts "Enter a number from 1 to 10: "
  guess = gets.chomp.to_i
while guess < number
  puts "You guessed too low! Try again: "
  guess = gets.chomp.to_i
while guess > number
  puts "You guessed too high! Try again: "
  guess = gets.chomp.to_i
  unless tries < max_tries
    puts "Sorry, you've exceeded the number of tries"
    break
  end
  tries += 1
end
end
end

puts "You guessed right!!" if guess == number
