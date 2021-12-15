class BooksController < ApplicationController

  def show
    books = Book.pg_search(show_params[:search_text])

    render json: { books: books }
  end

  def show_params
    params.permit(:search_text)
  end
end