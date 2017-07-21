require 'pry'

class BooksController < BlocWorks::Controller
  def welcome
    @book = "Eloquent Ruby"
    render :welcome
  end

  def index
    @books = Book.all
    render :index
  end

  def show
    @book = Book.find(params['id'].to_i)
    render :show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def delete
  end
end