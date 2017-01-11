require_relative "menu.rb"
require_relative "order.rb"

menu = Menu.new
order = Order.new

done = false

puts "hello hello, welcome! pizzaaa"

while not done
  puts "What can we do for you?"
  puts "1: order a pizza"
  puts "2: Nothing.."
  puts "3: Check out (€ #{order.value})" if order.value > 0
  puts "--------------------------"

  #get answer from customer
  choice = gets.chomp.to_i
  case choice
    when 1
      puts "here you've the menu"
      menu.print_details
      pizza = menu.pick_pizza
      order.add(pizza)
    when 2
      done = true
    else
      "I don't get it, please say again"
  end

  # if option 2 then bye!
  if done
    puts "thanks, to bad you didn't order anything.."
    puts "# here you should see a pizza slice.. but due to no money,
    we've skipped it. sorry."
  end
end
