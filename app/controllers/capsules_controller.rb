class CapsulesController < ApplicationController
before_action :set_capsule, only: [:edit, :update]

  def index
    @capsules = Capsule.where(user: current_user)
  end

  def show
  end

  def new
    @capsule = Capsule.new()
    @capsule.user = current_user
    @capsule.save!
  end

  def create
  end

  def edit
  end

  def update
    if @capsule.update!(capsule_params)
      respond_to do |format|
        format.html { redirect_to capsules_path, notice: 'Capsule was successfully updated' }
        format.json { render "" }
      end
    else
      format.html { render :edit, status: unprocessable_entity }
    end
  end

  def destroy
  end

  private

  def set_capsule
    @capsule = Capsule.find(params[:id])
  end

  def capsule_params
    params.require(:capsule).permit(:user, photos: [], videos: [], audios: [])
  end

end
