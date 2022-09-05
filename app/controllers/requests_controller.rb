class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def request_params
    params.require(:request).permit(:sex_id, :text).merge(user_id: current_user.id)
  end
end
