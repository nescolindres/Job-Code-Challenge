require_relative 'candy'
require_relative 'shelf'
require_relative 'shop'
class Init
$candy
$shop


  def menu
    @unsortedCandy = []
    puts "Welcome to Colindres Shop, Enter a Candy name"
    userInput = gets.to_s
    @candy = Candy.new(userInput)
    @unsortedCandy.push(@candy.getName)
    puts "Enter a shops name (For example Chocolate Shop): "
    userInputShop = gets.to_s
    @shop = Shop.new(userInputShop)
    puts (@shop.getName + " was created succesfully")
    puts "Automatically adding initial shelf..."
    @shop.addShelf(1)
    puts ("Shelf added succesfully to " + @shop.getName)
    loop do
      puts "Main Menu:  "
      puts "1)Show Shelved Candies    2)Insert new Candy    3)Show unstocked candy   \n4)Move unshelved candies to shelf
      "
      userInput = gets.to_i
          case userInput
          when 1
          @shop.showStock
          when 2
            puts "Enter a Candy name:"
            userInput = gets.to_s
            @candy = Candy.new(userInput)
            @unsortedCandy.push(@candy.getName)
          when 3
            puts "Unstocked Candy"
            puts @unsortedCandy
          end
      break if userInput == 0
    end

  end



end


candyShop = Init.new()
candyShop.menu
