class StartupController < ApplicationController
  before_action :set_startup, only: [:show, :edit, :update, :destroy]
  def new
    @startup = Startup.new
  end

  def create
    @startup = Startup.new(startup_params)

    if @startup.save
      redirect_to startup_index_path
    else
      flash.now[:alert] = "Oops.. Let's try again"
      render 'new'
    end
  end

  def update
    if @startup.update(startup_params)
      redirect_to startup_path(@startup)
    else
      render 'edit'
    end
  end

  def edit
    @startup
  end

  def destroy
    @startup.destroy

    redirect_to startup_index_path
  end

  def index
    @startups = Startup.all
  end

  def show
    @startup
  end

  private

  def startup_params
    params.require(:startup).permit(
      :company, 
      :description, 
      :website, 
      :interested_students, 
      :comments, 
      :contacts,
      :technology_stack,
      :location,
      :links
      )
  end

  def set_startup
    @startup = Startup.find(params[:id])
  end
end
