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
      print "1)Show Shelved Candies    2)Insert new Candy    3)Show unstocked Candies   \n4)Move Candies   "
      puts "5)Edit a shelf    0)Exit"
      userInput = gets.to_i
          case userInput
          when 1
            if @shop.getCandyArray[1] == nil
              puts "Nothing in shelf"
            else
               @shop.showStock
            end
          when 2
            puts "Enter a Candy's name:"
            userInput = gets.to_s
            @candy = Candy.new(userInput)
            @unsortedCandy.push(@candy.getName)
          when 3
            puts "Unstocked Candy"
            puts @unsortedCandy
          when 4
            puts "1)Move candy to shelf   2)Move candy out of a shelf"
            userInput = gets.to_i
            case userInput
            when 1
              puts "Type which candy you wish to move"
              puts @unsortedCandy
              userInput = gets.to_s
                if @unsortedCandy.include?(userInput) == true
                  puts "Enter the shelf you want to place it into"
                  @shop.showStock
                  userInputShelf = gets.to_i
                  @shop.addAdditionalCandy(userInputShelf,userInput) #need to append it instead of replace
                  @unsortedCandy.delete(userInput)
                  @shop.showStock
                else
                  puts "No candy exists named: #{userInput}"
                end
              when 2
                @shop.showStock
                puts "Which shelf would you like to select? "
                userInputShelf = gets.to_i
                puts "Type the candy you want to remove"
                userInput = gets.to_s
                if @shop.getCandyArray[userInputShelf].include?(userInput) == true
                @shop.removeCandy(userInputShelf,userInput)
                @unsortedCandy.push(userInput)
                @shop.showStock
                @unsortedCandy
              else
                puts "no such candy exists"
              end
            end
        when 5
            puts "Add or remove shelf?"
            userInput = gets.to_i
            case userInput
            when 1
              puts "Enter new shelf number"
              userInputShelf = gets.to_i
              @shop.addShelf(userInputShelf)
              @shop.showStock
            when 2
              puts "Enter the shelf you want to remove"
              userInputShelf = gets.to_i
              @shop.removeShelf(userInputShelf)
              @shop.showStock
            end

          end
      break if userInput == 0
    end

  end



end


candyShop = Init.new()
candyShop.menu
