class BooksController < ApplicationController
  def index
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  	
  end

 
   def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to book_path(@book.id), notice: "Book was successfully created."
else
	@books = Book.all
	render :books
end
  
  end

  def edit
  	@book = Book.find(params[:id])
  end
  
  def books
  	@book = Book.new
  	@books = Book.all
  end

  def update
  	@book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to book_path(@book.id), notice: "Book was successfully updated."
    else
	@books = Book.all
	render :edit
end
end

def destroy
    book = Book.find(params[:id]) 
    book.destroy
    redirect_to books_path 
end
 
 private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
end
end
