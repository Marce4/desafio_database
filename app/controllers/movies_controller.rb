class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movies = Movie.new
  end

  def create
    @movies = Movie.new(params.require(:movie).permit(:name, :director))
    
    if @movies.save
      redirect_to '/pages/index'
    else
      render :new      
    end
  end
end
