class SearchController < ApplicationController
  def index
    if params[:search].present?
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
  end

end
