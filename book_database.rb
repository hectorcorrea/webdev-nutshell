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
  # Returns all the records in the underlying JSON file
  def self.all
    text = File.read("books.json")
    books = JSON.parse(text)
    books
  end

  # Finds one record by id
  def self.find(id)
    book = all.find { |book| book['id'] == id}
  end

  # Adds a record to the underlying JSON file
  def self.add(id, title, author, year)
    # Calculate the id for the new book...
    books = all
    latest_book = books.max_by { |book| book["id"] }
    new_id = latest_book["id"] + 1

    # ...and save the new book
    new_book = {
      "id" => new_id,
      "title" => title,
      "author" => author,
      "year" => year
    }
    books << new_book
    File.write("books.json", JSON.pretty_generate(books))

    new_id
  end

  # Updates the informatio of a given record
  def self.update(id, title, author, year)
    books = all
    # Spin through all the books...
    books.each do |book|
      # ...if this record has the id that was provided
      if book["id"] == id
        # ... update it on disk
        book["title"] = title
        book["author"] = author
        book["year"] = year
        File.write("books.json", JSON.pretty_generate(books))
        return true
      end
    end

    return false
  end
end