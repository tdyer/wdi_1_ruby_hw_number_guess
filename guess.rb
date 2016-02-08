# Your code goes here
puts "Welcome to the 'Guess The Number' Game! You have three chances to guess a number between 1 and 10, inclusive. Good luck!\n\n"


randomnumber = 1 + rand(10)


puts "Please input your first guess.\n\n"


firstguess = gets.chomp!.to_i


if firstguess == randomnumber
  puts "That's right! Congratualtions you got it right on your first try! Goodbye.\n\n"
elsif firstguess > randomnumber
  puts "I'm sorry! That is wrong. Your guess was too high. Please take your second guess.\n\n"
  secondguess = gets.chomp!.to_i
else
  puts "I'm sorry! That is wrong. Your guess was too low. Please take your second guess.\n\n"
  secondguess = gets.chomp!.to_i
end


if secondguess == randomnumber
  puts "That's right! Congratualtions you got it right on your second try! Goodbye.\n\n"
elsif secondguess > randomnumber
  puts "I'm sorry! That is wrong. Your guess was too high. Please take your third guess.\n\n"
  thirdguess = gets.chomp!.to_i
else
  puts "I'm sorry! That is wrong. Your guess was too low. Please take your third guess.\n\n"
  thirdguess = gets.chomp!.to_i
end


if thirdguess == randomnumber
  puts "That's right! Congratualtions you got it right on your last try! Goodbye.\n\n"
else
  puts "I'm sorrry! That is wrong. You lose. The correct number was " + randomnumber.to_s + ". Goodbye.\n\n"
end
