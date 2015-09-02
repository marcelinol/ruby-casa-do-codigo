class Book < Media
  attr_reader :category, :author, :isbn

  def initialize(title, author, isbn = '1', page_number, price, category)
    @author = author
    @title = title
    @isbn = isbn
    @page_number = page_number
    @price = price
    @category = category
    @discount = 0.15
  end

  def eql?(other_book)
    @isbn == other_book.isbn
  end

  def to_s
    "Author: #{@title} - #{@author}, Isbn: #{@isbn}, Pages: #{@page_number}"
  end

  def hash
    @isbn.hash
  end
end
