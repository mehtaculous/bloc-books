require 'pry'

class BooksController < BlocWorks::Controller
  def welcome
    @book = "Eloquent Ruby"
    render :welcome
  end

  def index
    @books = Book.all
    render
  end

  def show
    @book = Book.find(params['id'].to_i)
    render
  end

  def new
    @book = Book.new
    render
  end

  def edit
    @book = Book.find(params['id'].to_i)
    render
  end

  def create
    @book = Book.new
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def update
    @book = Book.find(params['id'].to_i)
    if @book.update_attributes
      redirect_to @book
    else
      render :edit
    end
  end

  def delete
    @book = Book.find(params['id'].to_i)
    if @book.destroy
      redirect_to '/books'
    else
      render :show
    end
  end
end