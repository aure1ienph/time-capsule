class CapsulesController < ApplicationController
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
    @capsule = Capsule.find(params[:id])
  end

  def update
    @capsule = Capsule.find(params[:id])
    @capsule.update(params[:capsule])
    redirect_to capsules_path
  end

  def destroy
  end

  private

  def capsule_params
    params.require(:capsule).permit(:user, photos: [], videos: [], audio: [])
  end
end
