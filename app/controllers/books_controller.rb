class BooksController < ApplicationController
  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/homes/#{book.id}"
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to homes_path(book.id)
    end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to homes_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end