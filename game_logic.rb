module GameLogic
  def compare(input_array, code_array)

    return_array = []
    comparing_code_array = []
    comparing_input_array = []
    
    input_array.each_with_index do |num, ind|
      if(code_array[ind] == num)
        return_array.push("X")
      else
        comparing_code_array.push(code_array[ind])
        comparing_input_array.push(num)
      end
    end

    comparing_input_array.each_with_index do |char, i|
      if(comparing_code_array.include?(char))
        return_array.push("O")
      end
    end
    
    return return_array
  end
end