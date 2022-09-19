class AnswersController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to root_path
    else
      redirect_to action: :new
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def destroy
    @answer = Answer.find(params[:id])
    if @answer.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:text, :image).merge(user_id: current_user.id, request_id: params[:request_id])
  end
end
