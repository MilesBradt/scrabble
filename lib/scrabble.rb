class Scrabble

  def initialize()
    @letter_points = Hash.new()

    ones = [1,"A","E","I","O","U","L", "N","R","S","T"]
    twos = [2,"D","G"]
    threes =[3,"B","C","M","P"]
    fours =[4,"F","H","V","W","Y"]
    fives =[5,"K"]
    eights =[8,"J","X"]
    tens =[10,"Q","Z"]

    addToHash(ones)
    addToHash(twos)
    addToHash(threes)
    addToHash(fours)
    addToHash(fives)
    addToHash(eights)
    addToHash(tens)
  end

  def addToHash(array)
    i = 1
    until i > array.length do
      puts array[i]
      @letter_points.store(array[i], array[0])
      i = i +1
    end
  end

  def print_scores
    puts @letter_points
  end

  def scrabble(letter)
    letter_score = letter.upcase()
    @letter_points.fetch(letter_score)
  end

end
