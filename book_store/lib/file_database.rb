require 'yaml'

class FileDatabase
  def save(book)
    File.open('books.yml', 'a') do |file|
      file.puts YAML.dump(book)
      file.puts ""
    end
  end

  def load
    $/ = "\n\n"
    File.open('books.yml', 'r').map do |serialized_book|
      YAML.load serialized_book
    end
  end
end
