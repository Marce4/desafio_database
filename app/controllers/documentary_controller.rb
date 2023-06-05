class DocumentaryController < ApplicationController
  def index
    @documentaries = Documentary.all
  end

  def new
    @documentaries = Documentary.new
  end

  def create
    @documentaries = Documentary.new(params.require(:documentary).permit(:name, :director))
  
    if @documentaries.save
      redirect_to '/pages/index'
    else
      render :new      
    end
  end
end
