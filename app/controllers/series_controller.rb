class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def new
    @series = Series.new
  end
  
  def series_params 
    params.require(:series).permit(:name, :director)
  end

  def create
    @series = Series.new(series_params)
  
    if @series.save
      redirect_to '/pages/index'
    else
      render :new
    end
  end
end
