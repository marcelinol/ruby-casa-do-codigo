class Media
  attr_accessor :price
  attr_reader :title

  def discounted_price
    @price - (@price * @discount)
  end
end
