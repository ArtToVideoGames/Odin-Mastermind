module WordGenerator
  def generate(length)
    array = length.times.map{ Random.rand(1..6) }
    return array.join()
  end
end