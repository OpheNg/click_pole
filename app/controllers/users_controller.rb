class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def find_a_pole
    @user = current_user
    @hosts = Host.all
    @host = Host.find(params[:id])
  end

  def share
    @user = current_user

  end
end
