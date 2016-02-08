# Your code goes here
puts "Welcome to the 'Guess The Number' Game! You have three chances to guess a number between 1 and 10, inclusive. Good luck!"


randomnumber = 1 + rand(10)


puts "/n/Please input your first guess."
firstguess = gets.chomp!.to_i


if firstguess == randomnumber
  puts "/n/That's right! Congratualtions you got it right on your first try! Goodbye."
elsif firstguess > randomnumber
  puts "/n/I'm sorrry! That is wrong. Your guess was too high. Please take your second guess."
  secondguess = gets.chomp!.to_i
else
  puts "/n/I'm sorrry! That is wrong. Your guess was too low. Please take your second guess."
  secondguess = gets.chomp!.to_i
end


if secondguess == randomnumber
  puts "/n/That's right! Congratualtions you got it right on your second try! Goodbye."
elsif secondguess > randomnumber
  puts "/n/I'm sorrry! That is wrong. Your guess was too high. Please take your third guess."
  thirdguess = gets.chomp!.to_i
else
  puts "/n/I'm sorrry! That is wrong. Your guess was too low. Please take your third guess."
  thirdguess = gets.chomp!.to_i


if thirdguess == randomnumber
  puts "/n/That's right! Congratualtions you got it right on your last try! Goodbye."
else
  puts "/n/I'm sorrry! That is wrong. You lose. The correct number was " + randomnumber + ". Goodbye."
end
