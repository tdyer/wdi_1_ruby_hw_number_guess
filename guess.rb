#############################################################################
################################# Variables #################################
#############################################################################

#Print the title of the game
puts "\n************************ GUESS THE NUMBER!! ************************"
puts "\tHere we guess a number between 1 and whatever you choose."
puts "\tThe higher the number, the more guesses you get."

#Game loop boolean variable
play = true

#Keep track of if the player wins
win = false

##############################################################################
############################### Start the game ###############################
##############################################################################

while play

   print "\nPick a number greater than 1: "
   highNum = gets.to_i

   #Prevent invalid guess input
   while highNum <=1
      print "Please input a number greater than 1: "
      highNum = gets.to_i
   end

   #Generate random number
   randomNumber = 1 + rand(highNum)

   #Based on the difficulty of the guess, calculate the number of guesses
   #Log2x is a good formula
   # 1-4 = 2 guesses, 1-8 = 3, 1-16 = 4, 1-32 = 5, 1-64 = 6..... 1-1024 = 10)
   totalGuesses = Math.log2(highNum).round

   #Keep track of the user attempts
   attempts = 1

   #Ask user to guess the number
   puts "\nI'm thinking of a number between 1 and #{highNum.to_s}..."
   print "\nTake a guess: "

   #Start the in-game guessing loop
   while attempts <= totalGuesses && win != true

      #Get the input guess
      guess = gets.to_i

      #Prevent invalid guess input
      while guess > highNum || guess < 1
         print "Please input a valid number (1-#{highNum.to_s}): "
         guess = gets.to_i
      end

      #Generate different responses based on the input
      #We only want to print the 'higher' and 'lower' messages on non-final guesses
      if guess < randomNumber && attempts < totalGuesses
         print "Higher... try again (#{totalGuesses-attempts} guesses left): "
      elsif guess > randomNumber && attempts < totalGuesses
         print "Lower... try again (#{totalGuesses-attempts} guesses left): "
      elsif guess == randomNumber
         puts "\nYou got it!\n\n"
         win = true
      end

      #Add one to the attempts
      attempts += 1

   #The loop ends if they run out of attempts, of if they win
   end

   #Print the losing message if they didn't get the number right
   if win == false
      puts "\nSorry, the correct number was #{randomNumber.to_s}"
   end

   #After the game, ask the user if they want to replay
   print "Would you like to play again? (Y/N): "
   replay = gets.chomp

   # Force the user to input Y or N
   while replay != "Y" && replay != "N" && replay != "y" && replay != "n"
      print "Please enter Y or N: "
      replay = gets.chomp
   end

   if replay == "Y" || replay == "y"
      #Reset variables near the top to re-enter the game loop
      attempts = 1
      win = false
   end

   if replay == "N" || replay == "n"
      #Close the main loop
      play = false
   end

end

#############################################################################
################################# Game Over #################################
#############################################################################
