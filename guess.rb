# Your code goes here
number = rand(1...10)
tries = 1
max_tries = 3
max_number = 11

puts "Enter a number from 1 to 10: "
guess = gets.chomp.to_i


while guess < number
  puts "You guessed too low! Try again: "
  guess = gets.chomp.to_i
  tries += 1
  while guess > number
    puts "You guessed too high! Try again: "
    guess = gets.chomp.to_i
    tries += 1
    while guess > max_number
      puts "You guessed outside the range. Enter a number from 1 to 10: "
      guess = gets.chomp.to_i
      tries += 1
    end
  end
  unless tries < max_tries
    puts "Sorry, you've exceeded the number of tries. The correct number is #{number}"
    break
  end
end


puts "You guessed right!!" if guess == number
