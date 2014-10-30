class GroupsController < ApplicationController
  def new
    @note= Group.new
  end
end
