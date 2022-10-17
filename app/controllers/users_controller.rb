class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def find_a_pole
    @user = current_user
    # @host = Host.find(params[:id])
    @hosts = Host.all
  end

  def share
    @user = current_user
    @host = current_user

  end
end
