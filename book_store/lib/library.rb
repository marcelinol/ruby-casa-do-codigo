class Library
  attr_reader :books

  def initialize
    @books = {}
  end

  def add_book(book)
    @books[book.category] ||= []
    @books[book.category] << book
  end

  def books
    @books.values.flatten
  end

  def books_by_category(category)
    @books[category].each do |book|
      yield book if block_given?
    end
  end
end
