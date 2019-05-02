class ProfilesController < ApplicationController
  before_action :set_profile, only: [ :show, :edit, :update, :destroy]
  
  def edit
  end

  def show
  end

  def update
    if @profile.update(profile_params)
      
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      render :edit
    end
  end

 private
    def set_profile
      @profile = Profile.find(params[:id])
    end

   def profile_params
      params.require(:profile).permit(:name, :age, :gender, :contact, :city, :country, :user_id, :state, :zipcode, :avatar)
    end
end
