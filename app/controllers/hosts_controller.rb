class HostsController < ApplicationController

  def index
    @user = current_user
    # @host = Host.find(params[:id])
    @hosts = Host.all
  end

  def new
    @user = current_user
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    @user = current_user
    @host.user = current_user
    if @host.save
      redirect_to hosts_path
    else
    end
  end

  def edit
    @user = current_user
    @host = host.find(params[:format])
    # authorize @host
  end

  def update
    @host = Host.find(params[:id])

    @user = current_user
    @host.user = @user
    # authorize @host

    if @host.update(host_params_update)
      redirect_to hosts_path
    else
    end
  end

  def destroy
    @host = Host.find(params[:format])
    # authorize @host

    if @host.destroy
      redirect_to hosts_path
    else
    end
  end

  private

  def host_params
    params.require(:host).permit(:firstname, :lastname, :address, :email, :description)
  end

  def host_params_update
    params.require(:host).permit(:firstname, :lastname, :address, :description, :email)
  end
end
