class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_answer, only: %i[edit update destroy]

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

  def edit; end

  def update
    if @answer.update(answer_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @answer.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:text, :image).merge(user_id: current_user.id, request_id: params[:request_id])
  end
end
