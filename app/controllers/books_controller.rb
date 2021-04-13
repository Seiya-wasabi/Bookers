class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    if @book.save
     redirect_to home_path(@book.id)
      flash[:true] = "Book was successfully created."
    else
     @books = Book.all
       render template: 'homes/index'
    end

    # flash[:true] = "Book was successfully created."
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to update_book_path(book.id)
    else
      @books = Book.all
    render template: '/homes/edit'

    flash[:true1] ="Book was successfully updated."
    end
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