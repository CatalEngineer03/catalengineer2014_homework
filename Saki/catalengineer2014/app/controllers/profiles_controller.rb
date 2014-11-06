class ProfilesController < ApplicationController
 def index
   @profile = Profile.all
 end

 def show
   @profile = Profile.find(params[:id])
 end

 def new
   @profile = Profile.new
 end

 def create 
   @profile = Profile.new(profile_params)
   if @profile.save
     redirect_to @profile
   else 
    render :new
   end
 end

 def profile_params 
   params.require(:profile).permit(:Name, :Avatar)
 end


end
