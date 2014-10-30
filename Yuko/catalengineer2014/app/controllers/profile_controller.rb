class ProfileController < ApplicationController
  def new
    @note = Profile.new
  end
end
