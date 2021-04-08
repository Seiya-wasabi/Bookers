class BooksController < ApplicationController
  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/homes/#{book.id}"
  end

  def update
  end

  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
