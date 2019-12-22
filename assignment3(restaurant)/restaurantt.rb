# frozen_string_literal: true

# Restaurant class
class RestaurantPortal
  @@menu = { 'paneer' => 100, 'pizza' => 200, 'sandwich' => 50, 'burger' => 40,
             'french fries' => 70 }
  @@qty = { 'paneer' => 2, 'pizza' => 10, 'sandwich' => 10, 'burger' => 10,
            'french fries' => 10 }

  def initialize
    @order_list = {}
    @status = 'No items in cart'
  end

  def check_status
    puts @status
  end

  def display_menu
    puts '     item              price'
    @@menu.each do |key, value|
      puts "     #{key}            #{value}"
    end
  end

  def display_qty
    puts 'item       price'
    @@qty.each do |key, value|
      puts "#{key}       #{value}"
    end
  end

  def check_item(item)
    print @@qty[item]
    if (@@qty[item]).positive?
      true
    else
      false
    end
  end

  def check_item_menu
    puts 'Enter item name'
    item = gets.chomp
    if check_item(item)
      puts 'item available'
    else
      puts 'item not available'
    end
  end

  def display_order
    puts 'item       qty'
    @order_list.each do |key, value|
      puts "#{key}       #{value}"
    end
  end

  def place_order
    if @status == 'No items in cart'
      puts 'cart is empty'
    else
      @order_list = {}
      @status = 'placed'
      puts 'order is empty'
    end
  end

  def update_order_list(item)
    if check_item(item)
      flag1 = true
      if @order_list.key?(item)
        @order_list[item] += 1
        @@qty[item] -= 1
        flag1 = false
      end
      if flag1
        @order_list[item] = 1
        @@qty[item] -= 1
      end
    else
      puts 'Item not available'
    end
  end

  def accept_order
    loop do
      puts 'Enter the food item'
      item = gets.chomp
      update_order_list(item)
      puts 'want to order more (y/n)'
      dec = gets.chomp
      if dec == 'n'
        @status = 'item added to cart'
        return
      end
    end
  end
end

obj = RestaurantPortal.new
puts '------------menu----------'
obj.display_menu
puts "\n\n"
ch = 0

while ch != 6
  puts '//////// select option from list /////////'
  puts '1. add to cart'
  puts '2. show cart'
  puts '3. check item'
  puts '4. check status'
  puts "5. place order\n6. exit"
  ch = gets.chomp.to_i

  case ch
  when 1
    obj.accept_order
  when 2
    obj.display_order
  when 3
    obj.check_item_menu
  when 4
    obj.check_status
  when 5
    obj.place_order
  else
    'invalid input'
  end

  puts "\n\n"
end
