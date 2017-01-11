require_relative "menu.rb"

menu = Menu.new

done = false

puts "hello hello, welcome! pizzaaa"

while not done
  puts "What can we do for you?"
  puts "1: order a pizza"
  puts "2: Nothing.."
  puts "--------------------------"

  #get answer from customer
  choice = gets.chomp.to_i
  case choice
    when 1
      puts "here you've the menu"
      menu.print_details
    when 2
      done = true
    else
      "I don't get it, please say again"
  end

  # if option 2 then bye!
  if done
    puts "thanks, to bad you didn't order anything.."
    puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _ \"-._"
    puts "||    _ (_)    '-."
    puts "||   (_)   __..-'"
    puts " \\__..--\"\""
  end
end
