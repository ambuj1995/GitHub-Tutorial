class ProfilesController < ApplicationController
  before_action :set_profile, only: [ :show, :edit, :update, :destroy]
<<<<<<< HEAD
  
=======

>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
  def edit
  end

  def show
  end

  def update
    if @profile.update(profile_params)
<<<<<<< HEAD
      
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      render :edit
=======
      # params[:photos].each do |photo|
      #   @profile.photos.create(image: photo)
      # end if params[:photo].present?
      redirect_to @profile, notice: 'Profile was successfully created.'
    else
      redirect_to root_path 
>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
    end
  end

 private
    def set_profile
      @profile = Profile.find(params[:id])
    end

   def profile_params
<<<<<<< HEAD
      params.require(:profile).permit(:name, :age, :gender, :contact, :city, :country, :user_id, :state, :zipcode, :avatar)
    end
end
=======
      params.require(:profile).permit(:name, :age, :gender, :mobile, :city, :country, :user_id, :avatar, :image, avatars:[], hobbies: [] )
    end
end

>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
