class HostsController < ApplicationController

  # def index
  #   @user = current_user
  #   @hosts = Host.all
  #   # @hosts = policy_scope(host).order(created_at: :desc)

  #   # @markers = @hosts.geocoded.map do |nanny|
  #   #   {
  #   #     lat: nanny.latitude,
  #   #     lng: nanny.longitude,
  #   #     info_window: render_to_string(partial: "info_window", locals: { nanny: nanny }),
  #   #     image_url: helpers.asset_url("mama.png")
  #   #   }
  #   # end
  # end

  # def new
  #   @user = current_user
  #   @host = Host.new
  #   @hosts = Host.all
  #   # authorize @host
  # end

  # def create
  #   @host = Host.new(host_params)
  #   @user = current_user
  #   @host.user = current_user
  #   # authorize @host

  #   if @host.save
  #     redirect_to hosts_path
  #   else
  #   end
  # end


  # ======================

  def index
    @user = current_user
    @host = current_user
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
