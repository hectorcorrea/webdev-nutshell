# This class mimics a database that stores book information.
# Data is saved to a JSON file.
#
# The class provides methods to retrieve `all` records,
# `find` a record by id, `add` a new record, and `update`
# the information of an existing record.
#
# This approach is NOT a good idea for real systems,
# but it is good enough the purposes of this workshop.
#
class BookDatabase
  #
  # Returns all the records in the underlying JSON file
  def self.all
    text = "[]"
    if File.exists?("books.json")
      text = File.read("books.json")
    end
    books = JSON.parse(text)
    books
  end

  #
  # Finds one record by id
  def self.find(id)
    book = all.find { |book| book['id'] == id.to_i }
  end

  #
  # Returns a new empty book (but it does not save it)
  def self.create_new
    book = { "title" => "", "author" => "", "year" => Time.now.year }
    book
  end

  #
  # Adds a record to the underlying JSON file
  def self.add(title, author, year)
    # Calculate the id for the new book...
    new_id = get_new_book_id()

    # ...and save the new book
    new_book = {
      "id" => new_id,
      "title" => title,
      "author" => author,
      "year" => year
    }
    books = all
    books << new_book
    File.write("books.json", JSON.pretty_generate(books))

    new_id
  end

  #
  # Updates the information of a given record in the JSON file
  def self.update(id, title, author, year)
    # Spin through all the books...
    books = all
    books.each do |book|
      # ...if this record has the id that was provided
      if book["id"] == id.to_i
        # ... update it
        book["title"] = title
        book["author"] = author
        book["year"] = year
        # ... write the changes to disk
        File.write("books.json", JSON.pretty_generate(books))
        return true
      end
    end

    return false
  end

  #
  # Calculates the id for a new book
  def self.get_new_book_id
    books = all
    if books.count == 0
      return 1
    end

    latest_book = books.max_by { |book| book["id"] }
    return latest_book["id"] + 1
  end
end