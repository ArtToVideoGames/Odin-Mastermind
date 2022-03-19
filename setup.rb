require_relative "gamemanager"

class Setup
  def length()
    puts "\nPlease input a valid positive interger to indicate how long you would like the codeword to be"
    @length = gets.chomp().to_i
    unless(@length.to_i >= 1)
      length()
    else
      guesses()
    end
  end

  def guesses()
    puts "\nPlease input a valid positive interger to indicate how many guessees you would like to have"
    @guesses = gets.chomp().to_i
    unless(@guesses.to_i >= 1)
      guesses()
    else
      setup()
    end
  end

  def setup()
    game = GameManager.new()
    game.new_game(@length, @guesses)
  end
end