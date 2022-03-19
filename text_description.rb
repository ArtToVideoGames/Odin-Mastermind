require_relative 'setup'

puts "Welcome to Mastermind!
\nHow to play:
\nIn this version of Mastermind, you will play against the computer.
\nThe computer will set the codeword to be a random number of your specified length.
\nYou will then get an amount of guesses, of your specified amount, to guess what that number is.
\nEvery time you make a guess, the computer will give you hints to narrow down what the number is.
\nExample:
\n---
\nYou input: 4512, the Codeword is 4163
\nThe computer gives you these hints: XO
\nThe X represents that you have a correct number in a correct spot (The number 4)
\nThe O represents you have a correct number in the incorrect spot (The number 1)
\n---
\nIf you can guess the word in your set amount of guesses, you win!
\nIf not, you lose and the computer has bested you again!
\nGood luck!"

Setup.new.length()