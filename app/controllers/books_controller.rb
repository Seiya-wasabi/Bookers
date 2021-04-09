class BooksController < ApplicationController
  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/homes/#{book.id}"
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book:id)
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end