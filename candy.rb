require_relative 'shelf'
require_relative 'shop'
class Candy < Shelf
attr_accessor :name, :isShevled

  def initialize(name)
    @name = name
    @isShevled = false
  end

  def getName
    return @name
  end

  def setName(name)
    @name = name
  end

  def getIsShelved
    return @isShevled
  end

  def setIsShelvedTrue
    @isShevled = true
  end
end
