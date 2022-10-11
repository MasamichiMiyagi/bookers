class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all

    @books = Book.new(books_params)
    if @books.save
      flash[:notice] = "Book was successfully created."
    else
      render :index
    end
  end

  def show
  end

  def edit
  end
end
