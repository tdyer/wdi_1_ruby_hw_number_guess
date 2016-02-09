# Your code goes here
number = rand(1...10) + 1
#guess = 11
tries = 1
max_tries = 3
max_number = 11

while tries < 3
    puts 'Enter a number from 1 to 10:'
    guess = gets.chomp
    guess = guess.to_i
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

puts "You guessed right!!" if guess == number
