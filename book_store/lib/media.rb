class Media
  attr_accessor :price
  attr_reader :title

  def initialize
    @discount = 0.1
    @price = 10.0
  end

  def discounted_price
    @price - discount
  end

  private
  def discount
    @price * @discount
  end
end
