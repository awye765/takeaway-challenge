class Menu

  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def print
    dishes.map { |title, price|
      "%s £%.2f" % [title.to_s.capitalize, price]
    }.join(", ")
    #
    # Executes block for each key-value pair in dishes hash.  The block formats
    # the key-value pair info into a string that is more easily read by a human.
    #
    # For example: {pizza: 9.99} => "Pizza £9.99"
    #
    # The string template denoted by "" on th left of the % symbol defines how
    # we want to format the hash info into a string.  The info in [] on the
    # right of the % assigns these values to each of the % INSIDE the template
    # string as follows:
    #
    # => "%s" interpolates the key (i.e. the dish title), which has been
    #     converted to a string and capitalized by "title.to_s.capitalize".  
    #
    # = > "£%.2f" interpolates the value (i.e. the price) and formats into £
    #     with two decimal places.
    #
    printed_menu = "Pizza £9.99, Burger £2.99, Chips £1.99"

  end

end