class Order
attr_accessor :order

  def initialize
    @order = []
  end

  def add(pizza)
    @order << pizza
  end

  def value
    @order.reduce(0){|sum,pizza| sum + pizza.price }
  end

end
