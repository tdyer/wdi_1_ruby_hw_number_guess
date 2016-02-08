# Your code goes here
number = rand(1...10)
#guess = 11
tries = 1
max_tries = 3
max_number = 11

print "Enter a number from 1 to 10: "
guess = gets.chomp!.to_i

while guess < number
  tries += 1
  puts "You guessed too low! Try again: "
  guess = gets.chomp!.to_i

  while guess > number
    tries += 1
    puts "You guessed too high! Try again: "
    guess = gets.chomp!.to_i

    while guess > max_number
      puts "You guessed outside the range. Enter a number from 1 to 10: "
      guess = gets.chomp!.to_i
    end
  end
  unless tries < max_tries
    puts "Sorry, you've exceeded the number of tries. The correct number is #{number}"
    break
  end
  tries += 1
end

puts "You guessed right!!" if guess == number
