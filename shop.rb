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
end
