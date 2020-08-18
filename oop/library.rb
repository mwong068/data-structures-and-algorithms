# Library class that will hold two values: books checked out, books available

class Library
    attr_accessor :books_available
    
    def initialize(books_available)
        @books_available = books_available
    end
    
    def checkout_book(book)
        title = book.title
        print books_available[:title]
        if books_available[title] == true
                raise "Sorry, that book is checked out already."
        else
            book.checked_out = true
            print "You have checked out the book!"
        end
    end
    
end

class Book 
    attr_accessor :title, :author, :checked_out
    
    def initialize(title, author)
        @title = title
        @author = author
        @checked_out = false
    end
    
end

library = Library.new({"title": "author"})
new_book = Book.new("title", "author")
library.checkout_book(new_book)
library.checkout_book(new_book)