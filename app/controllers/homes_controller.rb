class HomesController < ApplicationController
  def top
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
     redirect_to "/homes/:id"
      flash[:true] = "Book was successfully created."
    else
     @books = Book.all
       render template: 'homes/index'
    end
    # flash[:true] = "Book was successfully created."
  end
  

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def new
  end

  def edit
    @book = Book.find(params[:id])
  end
end