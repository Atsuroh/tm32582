class TmartsController < ApplicationController
  before_action :set_tmart, only: [:show, :edit, :update, :destroy]
  def index
    @tmarts = Tmart.order("created_at DESC")
  end
  def create
    @tmarts = Tmart.new(tmart_params)
    if @tmart.save
      redirect_to tmarts_path
    else
      render :new
    end
  end
  private
  def tmart_params
    params.require(:tmart).permit(:image, :product_name,
                                  :text, :category_id,
                                  :status_id, :store_id,
                                  :before, :after).merge(user_id: current_user.id)
  end
  def set_tmart
    @tmart = Tmart.find(params[:id])
  end
end