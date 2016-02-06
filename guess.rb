puts "Guess a number from 0-10. You have 3 chances to guess the right number."

#Generates random number
number = rand(10)

#loops up to 3 times
3.times do |try|

	# It shows how many chances left  / Any better way to do this??
	if try.to_i == 0
		puts "3 chances to go!"
	
	  elsif try.to_i == 1
		puts "2 chances to go!"

	  else
		puts "This is your last try!"

	end

	print "Guess: "
	guess = gets.chomp!.to_i

#Conditional helps user to find number
	if guess > number
		puts "Sorry :( Too big!!"

	  elsif guess < number
		puts "Sorry :( Too small!!"
				
	  else
		puts "Congratulations!! :)"
# Breaks loop if answer is right
		break		
	end
end
# Prints hidden number at the end of loop
puts "The right number is: " + number.to_s
