class BooksController < ApplicationController
  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/homes/#{book.id}"
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book:id)
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    redirect_to("/homes/index")
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end