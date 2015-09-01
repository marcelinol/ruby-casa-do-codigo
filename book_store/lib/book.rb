class Book
  attr_accessor :price
  attr_reader :category, :author, :title, :isbn

  def initialize(author, title, isbn = '1', page_number, price, category)
    @author = author
    @title = title
    @isbn = isbn
    @page_number = page_number
    @price = price
    @category = category
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
