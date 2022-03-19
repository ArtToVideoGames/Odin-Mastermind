require_relative 'answercheck'
require_relative 'game_logic'
require_relative 'setup'

class GameManager
  include WordGenerator
  include CheckAnswer
  include GameLogic

  def new_game(length, guesses)
    @codeword = newWord(length)
    @length = length
    @guesses = guesses
    guess(@length, 0)
  end
  
  def newWord(length)
    return generate(length)
  end

  def guess(length, guess_count)
    unless(guess_count >= @guesses)
      puts "\nThe Computer is ready for you to make your guess"
      answer = gets.chomp()
      #if(answer == "giveMeTheWord")
        #puts @codeword
      #end
      if(check(answer, @length) == true) 
        array = answer.split('')
        array.map! { |num| num.to_i}
        code_array = @codeword.to_s.split('')
        code_array.map! { |num| num.to_i } 
        valid_array = @length.times.map{ "X" }
        unless(compare(array, code_array) == valid_array)
          puts "\nHint: #{compare(array, code_array).join.reverse}"
          guess_count += 1
          guess(length, guess_count)
        else
          puts "\nYou guessed the codeword!
          \nThe codeword was #{@codeword}
          \nPlay Again? Type y for Yes and n for No"
          again = gets.chomp()
          if(again == "y")
            Setup.new.length()
          elsif(again == "n")
            #Do Nothing
          else
            repeat()
          end
        end
      else
        guess(length, guess_count)
      end
    else
      puts "\nYou couldn't guess the codeword in enough tries
      \nThe codeword was #{@codeword}"
    end
  end

  def repeat()
    puts "\nPlay Again? Type y for Yes and n for No"
    again = gets.chomp()
    if(again == "y")
      Setup.new.length()
    elsif(again == "n")
      #Do Nothing
    else
      repeat()
    end
  end
end