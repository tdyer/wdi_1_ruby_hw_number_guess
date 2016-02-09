# Your code goes here
number = rand(1...10)
#guess = 11
tries = 0
#max_tries = 3
#max_number = 11

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
    unless tries = 3
      puts "You ran out of guesses. The number is #{number}"
end
end
#puts "You guessed right!!" if guess == number
