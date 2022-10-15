class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def my_account
    @host = current_user
  end

  def tutorials
  end

  def shop
  end
end
