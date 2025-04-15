class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(likes_params)
    @like.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def likes_params
    params.require(:like).permit(:likeable_id, :likeable_type)
  end
end
