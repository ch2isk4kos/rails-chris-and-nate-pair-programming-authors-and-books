class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
    # byebug
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    redirect_to author_path(@author)
    # redirect_to authors_path
  end

  def edit
    @author = Author.find(params[:id])
    render :edit
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    redirect_to author_path(@author)
    # byebug
  end

  def destroy
    @author = Author.find(params[:id])
    # byebug
    @author.destroy
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:name, :birthyear)
  end

end
