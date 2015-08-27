class Book
  attr_accessor :price
  attr_reader :category, :author

  def initialize(author, isbn = '1', page_number, price, category)
    @author = author
    @isbn = isbn
    @page_number = page_number
    @price = price
    @category = category
  end

  def eql?(other_book)
    @isbn == other_book.isbn
  end

  def to_s
    "Author: #{@author}, Isbn: #{@isbn}, Pages: #{@page_number}"
  end
end
