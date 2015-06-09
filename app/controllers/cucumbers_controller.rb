class CucumbersController < ApplicationController
  def index
    @cucumbers = Cucumber.all
  end

  def show
    @cucumber = Cucumber.find(params[:id])
  end

  def new
    @cucumber = Cucumber.new
  end

  def create
    @cucumber = Cucumber.new(cucumber_params)
    if @cucumber.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def cucumber_params
    params.require(:cucumber).permit(:browser, :env, :tag)
  end


end
