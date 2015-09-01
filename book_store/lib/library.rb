class Library
  attr_reader :books

  def initialize
    @books = {}
    @file_database = FileDatabase.new
  end

  def add_book(book)
    @books[book.category] ||= []
    @books[book.category] << book
    @file_database.save(book)
  end

  def books
    @books.values.flatten
  end

  def books_by_category(category, &block)
    @books[category].each do |book|
      block.call(book)
    end
  end

  #TODO: validar se já nao existe um livro com aquele isbn
end
