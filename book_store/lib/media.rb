class Media
  attr_accessor :price
  attr_reader :title

  def initialize
    @discount = 0.1
  end

  def discounted_price
    @price - (@price * @discount)
  end
end
