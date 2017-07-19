require 'pry'

class BooksController < BlocWorks::Controller
  def welcome
    @book = "Eloquent Ruby"
    render :welcome
  end

  def index
    @books = Book.all
    render :index, books: @books
  end

  def show
    binding.pry
    @book = Book.find(params[:id])
    render :show, book: @book
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    request = Rack::Request.new(@env)

    @book = Book.create(
      name: request.params[:name],
      author: request.params[:author],
      pages: request.params[:pages]
    )
  end

  def update
  end

  def delete
  end
end