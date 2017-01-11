require_relative "pizza.rb"

class Menu
  attr_accessor :pizzas

#number, name, ingredients, price
  def initialize
    @pizzas = []
    @pizzas << Pizza.new(101, "margarita", "simple, tomato & cheese", 6)
    @pizzas << Pizza.new(102, "calzone", "Veggies & ham", 9)
    @pizzas << Pizza.new(103, "lasagna", "dough, veggies & cheese, and meet", 8)
    @pizzas << Pizza.new(104, "spinach", "spinach & goatcheese + an egg", 8)
    @pizzas << Pizza.new(105, "mozzarella", "well the title says it, right?", 7)
    @pizzas << Pizza.new(106, "mushrooms", "lots of mushrooms & cheese", 8)
  end

  def print_details
    puts " here's our menu:"
    @pizzas.each do |pizza|
      puts "#{pizza.number}: #{pizza.name} -> #{pizza.ingredients} -> €#{pizza.price}"
    end
  end
end
