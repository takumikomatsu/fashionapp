class RequestsController < ApplicationController
  before_action :set_request, only: %i[edit update destroy]
  def index
    @requests = Request.all
    @answers = Answer.all
  end

  def new
    @request = Request.new
  end

  def edit; end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @request.update(request_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @request.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:sex_id, :text).merge(user_id: current_user.id)
  end
end
