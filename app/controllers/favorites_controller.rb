class FavoritesController < ApplicationController
  def create
    @answer = Answer.find(params[:answer_id])
    @answer_favorite = Favorite.new(user_id: current_user.id, answer_id: params[:answer_id],
                                    request_id: params[:request_id])
    @answer_favorite.save
  end

  def destroy
    @answer = Answer.find(params[:answer_id])
    @answer_favorite = Favorite.find_by(user_id: current_user.id, answer_id: params[:answer_id],
                                        request_id: params[:request_id])
    @answer_favorite.destroy
  end
end
