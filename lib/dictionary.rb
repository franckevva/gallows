class Dictionary
  def initialize
    @dictionary=['dog','cat','tree','house','water','way','number']
  end
  def takeWord
     @dictionary[rand(0..@dictionary.size-1)]
  end
end