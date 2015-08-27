class Report
  def initialize(library)
    @library = library
  end

  def total_price
    @library.books.inject(0) do |total_price, book|
      total_price += book.price
    end
  end

  def titles
    @library.books.map(&:title)
  end
end
