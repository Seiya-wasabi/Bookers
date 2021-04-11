class BooksController < ApplicationController
  def create
    book = Book.new(book_params)
    if book.save
    redirect_to "/homes/#{book.id}"
    else
      render "new"
    end

    flash[:true] = "Book was successfully created."
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to update_book_path(book.id)
    
    flash[:true1] ="Book was successfully updated."
    end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to homes_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end