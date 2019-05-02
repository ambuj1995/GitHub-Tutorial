class ProfilesController < ApplicationController
  before_action :set_profile, only: [ :show, :edit, :update, :destroy]
  def new
    @profile = Profile.new
  end

  def edit
  end

  def show
  end

  def update
    if @profile.update(profile_params)
      # params[:photos].each do |photo|
      #   @profile.photos.create(image: photo)
      # end if params[:photo].present?
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      redirect_to root_path 
    end
  end

 private
    def set_profile
      @profile = Profile.find(params[:id])
    end

   def profile_params
      params.require(:profile).permit(:name, :age, :gender, :mobile, :city, :country, :user_id, :avatar, :image, avatars:[], hobbies: [] )
    end
end
