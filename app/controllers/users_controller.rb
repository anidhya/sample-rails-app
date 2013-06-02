class UsersController < ApplicationController

  def index
    @users = User.includes(:role).all
  end

  def change_role
    user = User.find(params[:id])
    user.role_id = params[:role_id].to_i
    user.save
  end
end
