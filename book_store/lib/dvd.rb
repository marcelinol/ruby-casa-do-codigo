class DVD < Media

  def initialize(title, price, category)
    @title = title
    @price = price
    @category = category
    @discount = 0.1
  end

  def to_s
    %Q{ Title: #{@title}, Price: #{@price} }
  end
end
