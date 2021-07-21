require_relative 'candy'
require_relative 'shop'
class Shelf < Shop
$candyArray
  def initialize
    @candyArray = {}
  end

  def getlength
    return @candyArray.length
  end

  def printArray
   puts @candyArray
  end

  def addElement (shelf , value)
    @candyArray[shelf] = value #If i have the same index, im actually just appending the value.
  end                               #{"1" => ["candy", "coco"]  }

  


end
