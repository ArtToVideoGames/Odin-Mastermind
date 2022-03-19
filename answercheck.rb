module CheckAnswer
  def check(answer, length)
    if(answer.to_i >= 1)
      array = answer.split('')
      array.map! { |num| num.to_i}   
      if(array.length == length)
        return true
      else
        return false
      end
    else
      return false
    end
  end
end