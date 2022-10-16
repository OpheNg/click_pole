class TrainingsController < ApplicationController
  def index
    @user = current_user
    @trainings = Training.all
  #   @trainings = policy_scope(training).order(created_at: :desc)
  end

  def show
    @user = current_user
    @training = Training.find(params[:training_id])
    # authorize @training
  end

  def new
    @user = current_user
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    @user = current_user
    @training.user = current_user
    # authorize @training
    redirect_to trainings_path if @training.save
  end

  def edit
    @user = current_user
    @training = Training.find(params[:id])
    # authorize @training
  end

  def update
    @training = Training.find(params[:id])
    @user = current_user
    @training.user = @user
    # authorize @training

    if @training.update(training_params_update)
      redirect_to training_path
    else
      render :edit
    end
  end

  def destroy
    @training = Training.find(params[:id])
    # authorize @training

    if @training.destroy
      redirect_to trainings_path
    else
      render :edit
    end
  end

  private

  # def set_training
  #   @training = Training.find(params[:id])
  # end

  def training_params
    params.require(:training).permit(:begining, :end_time, :date, :address, :user_id)
  end

  def training_params_update
    params.require(:training).permit(:begining, :end, :date, :address)
  end
end
