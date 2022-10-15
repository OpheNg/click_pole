class TrainingsController < ApplicationController
  # def index
  #   @user = current_user
  #   @host = Host.new
  #   @trainings = Training.all


  #   # @trainings = policy_scope(training).order(created_at: :desc)
  # end

  # def show
  #   @user = current_user
  #   @training = Training.find(params[:id])
  #   # authorize @training
  # end

  # def new
  #   # @hosts = Host.all
  #   @training = Training.new
  #   @host = Host.find(params[:id])
  #   @users = User.all
  #   @user = current_user

  #   # authorize @training
  # end

  # def create
  #   @training = Training.new(training_params)
  #   @host = Host.find(params[:id])
  #   @training.user = current_user
  #   # authorize @training

  #     if @training.save
  #        redirect_to trainings_path
  #     else
  #       render :new
  #     end
  # end

  # ==============================


  def index
    @user = current_user
    @trainings = Training.all
  #   @trainings = policy_scope(training).order(created_at: :desc)
    end
  def show
    @user = current_user
    @training = Training.find(params[:id])
    # authorize @training
  end
  # def new
  #   @host = Host.find(params[:host_id])
  #   @user = current_user
  #   @training = Training.new
  #   # authorize @training
  # end
  def new
    @user = current_user
    @training = Training.new
    @hosts = Host.all
    @Host = Host.new
    @training.host_id = params[:host_id]
    @host_trainings = Training.where(host_id: @user.id)

  end

  def create
    @training = Training.new(training_params)
    @user = current_user
    @training.host = current_user
    @trainings = Training.all
    @training.save

    # authorize @training
      if @training.save
        redirect_to host_trainings_path
      end
  end

  def edit
    @user = current_user
    @training = training.find(params[:format])
    # authorize @training
  end

  def update
    @training = Training.find(params[:id])

    @user = current_user
    @training.user = @user
    # authorize @training

    if @training.update(training_params_update)
      redirect_to host_training_path
    else
        render :edit
    end
  end

  def destroy
    @training = Training.find(params[:format])
    # authorize @training

    if @training.destroy
      redirect_to host_trainings_path
    else
    end
  end

    private



  def training_params
    params.require(:training).permit(:begining, :end_time, :host_id, :date, :address, :user_id)
  end

  def training_params_update
    params.require(:training).permit(:begining, :end, :date, :address)
  end
end
