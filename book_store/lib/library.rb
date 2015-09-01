class Library
  attr_reader :books

  def initialize
    @file_database = FileDatabase.new
  end

  def add_book(book)
    save(book) do
      books << book
    end
  end

  def books_by_category(category)
    books.select { |book| book.category == (category) }
  end

  def books
    @books ||= @file_database.load
  end

  private

  def save(book)
    @file_database.save(book)
    yield
  end

  #TODO: validar se já nao existe um livro com aquele isbn
end
