class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
   @profile  = Profile.new(profile_params)
    if @profile.save
     redirect_to @profile
    else
      render :new
    end
  end

  def profile_params
    params.require(:profile).permit(:title, :body)
  end
  
  def show
   @profile = Profile.find(params[:id])
  end

 def index
   @profiles = Profile.all
 end
  
 def edit
   @profile = profile.find(params[:id])
 end

 def update
   @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render :edit
    end
 end

end
