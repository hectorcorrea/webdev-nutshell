# This class mimics a database that stores book information.
# Data is saved to a JSON file.
#
# The class provides methods to retrieve `all` records,
# `find` a record by id, `add` a new record, and `update`
# the information of an existing record.
#
# This database approach is NOT a good idea for real systems,
# but it is good enough the purposes of this workshop.
#
require "securerandom"

class BookDatabase

  # This class represents a single book
  class Book
    attr_accessor :id, :title, :author, :year
    def initialize(id: "", title: "", author: "", year: Time.now.year)
      @id = id
      @title = title
      @author = author
      @year = year
    end

    def self.new_from_hash(hash)
      Book.new(id: hash["id"], title: hash["title"], author: hash["author"], year: hash["year"])
    end

    # see: https://stackoverflow.com/a/40642530/446681
    def as_json(options={})
      { id: @id, title: @title, author: @author, year: @year }
    end

    # see: https://stackoverflow.com/a/40642530/446681
    def to_json(*options)
      as_json(*options).to_json(*options)
    end

    def to_s
      "id: #{@id}, title: #{@title}, author: #{@author}"
    end
  end

  #
  # Returns all the records in the underlying JSON file
  def self.all
    text = "[]"
    if File.exist?("books.json")
      text = File.read("books.json")
    end
    data = JSON.parse(text)
    books = data.map { |hash| Book.new_from_hash(hash) }
    books
  end

  #
  # Finds one record by id
  def self.find(id)
    book = all.find { |book| book.id == id }
  end

  #
  # Returns a new empty book (but it does not save it)
  def self.create_new
    Book.new
  end

  #
  # Adds a record to the underlying JSON file
  def self.add(title, author, year)
    # Calculate the id for the new book...
    new_id = get_new_book_id()

    # ...and save the new book
    new_book = Book.new(id: new_id, title: title, author: author, year: year)
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
      if book.id == id
        # ... update it
        book.title = title
        book.author = author
        book.year = year
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
    SecureRandom.hex
  end
end
