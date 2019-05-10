class DatachecksController < ApplicationController
  before_action :set_datacheck, only: [:show, :edit, :update, :destroy]
  
  def index
    @datachecks = Datacheck.all
  end

  def new
    @datacheck = Datacheck.new
  end

  def create
    @datacheck = Datacheck.new(datacheck_params)  
    if @datacheck.save
      redirect_to @datacheck, notice: 'Name was successfully resistered.'
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @datacheck.update(datacheck_params)
      redirect_to @datacheck, notice: 'Name was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @datacheck.destroy
    redirect_to datachecks_url, notice: 'Name was successfully destroyed.'
  end


  private
   def set_datacheck
      @datacheck = Datacheck.find(params[:id])
    end

   def datacheck_params
      params.require(:datacheck).permit(:first_name, :last_name)
    end
end
