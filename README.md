# Guess the Number

*"I'm thinking of a number between 1 and 10..."*

Write a Ruby program that generates a random number between 1 and 10, and allows the user to guess what it is. The user only gets three guesses &ndash; but to help them out, if they guess incorrectly, the program should tell them whether the actual number is higher or lower than their guess. If the user guesses correctly, the program should end with a congratulatory message. If they run out of guesses, the program should tell them what the actual number was.

## Instructions

These are mostly the same steps you'll follow for every assignment, so we won't repeat them much from here on out.

1. Fork this repo.
2. `git clone` your fork into your GA code directory.
3. `cd` into the newly-cloned directory.
4. Create a Ruby file &ndash; call it `guess.rb` or whatever you like.
5. In this file, write a program according to the specifications above. Try to break the problem down into small isolated steps: Each time you complete a step, make a Git commit with a descriptive message. Your program should always be *working* in each commit, though it might not be completely *done*.
6. When finished, `git push` your local changes back up to your fork.
7. Submit a **Pull Request** to the original repo. In the description field, tell us about any problems you encountered or known issues with your program (e.g. does it not fulfill all of the specs? which ones?).

## Grading

* (2) Program generates a random number and prompts the user to guess it
* (1) Program can tell the user whether a guess was correct or not
* (2) Program allows the user to guess again if they guess incorrectly
* (1) Program only allows three incorrect guesses before revealing the number
* (1) Program gives a "higher or lower" hint on an incorrect guess
* (1) Program outputs an error and does *not* use up a guess when an out-of-range number is entered
* (1) Repository has several logical commits with descriptive messages
* (1) Code uses correct indentation/style and descriptive variable names

### Bonuses

* (1) Why always 10? Enhance your program to allow the user to specify a maximum number before they start guessing. The number of incorrect guesses allowed should be scaled appropriately (the exact logic is up to you) &ndash; giving someone only three tries to guess a number between 1 and 500 isn't very fair! Make sure you tell the user how many guesses they have left at each prompt.
* (1) Play it again! When the game ends, ask the user if they'd like to play again. Answering "yes" should generate a new random number and start the game again from the beginning.
