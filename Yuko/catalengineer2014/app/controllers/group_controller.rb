class GroupController < ApplicationController
  def new
    @note= Group.new
  end
end
