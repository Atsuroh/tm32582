class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:index, :create]
  def index
    @purchase = Purchase.new
    if @tmart.user_id == current_user.id
      redirect_to root_path
    end
  end
  def create
    @purchase = Purchase.new(order_params)
    if @purchase.valid?
      pay_tmart
      @purchase.save
      return redirect_to root_path
    else
      render :index
    end
  end
  private
  def order_params
    params.require(:purchase).permit(:accept_id).merge(user_id: current_user.id, tmart_id: params[:tmart_id], token: params[:token])
  end
  def set_order
    @tmart = Tmart.find(params[:tmart_id])
  end
  def pay_tmart
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # 自身のPAY.JPテスト秘密鍵を記述しましょう
    Payjp::Charge.create(
      amount: @tmart.after_price,  # 商品の値段
      card: order_params[:token],    # カードトークン
      currency: 'jpy'                 # 通貨の種類（日本円）
    )
  end
end