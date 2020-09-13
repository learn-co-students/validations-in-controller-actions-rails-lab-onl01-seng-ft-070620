require 'pry'
class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

# given valid data, create new author and redirect to their page
# otherwise redirect to new form
  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
