class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book) #投稿成功ページ
    else
      @books = Book.all
      render :index
    end
  end

  def show
  end

  def edit
  end


  private #←一種の境界線、「ここから下はこのcontrollerの中でしか呼び出せません」という意味があるので、他アクション(create,index,show等)を巻き込まないように一番下に書く。
  #↓以下ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end