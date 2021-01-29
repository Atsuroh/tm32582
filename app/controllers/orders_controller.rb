class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:index, :create]
  def index
    @order = Order.new
    if @tmart.user_id == current_user.id
      redirect_to root_path
    end
  end
  def create
  end
  private
  def order_params
    params.require(:order).merge(user_id: current_user.id, tmart_id: params[:tmart_id], token: params[:token])
  end
  def set_order
    @tmart = Tmart.find(params[:tmart_id])
  end
end