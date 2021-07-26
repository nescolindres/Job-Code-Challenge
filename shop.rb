require_relative 'shelf'
require_relative 'candy'
$shopName
$shelf
class Shop

  def initialize (name)
    @shopName = name
    @shelf = Shelf.new()
  end

  def getName
    return @shopName
  end

  def addShelf(shelfNumber)
    @shelf.addElement(shelfNumber, nil)
  end

  def showStock
    puts @shelf.printArray
  end

  def getCandyArray
    return @shelf.getArray
  end

  def addAdditionalCandy (shelf, candy)
    @shelf.appendElement(shelf,candy)
  end

  def removeShelf (shelfNumber)
    @shelf.removeArray(shelfNumber)
  end

  def removeCandy (shelf, value)
    @shelf.deleteElement(shelf, value)
  end
end
