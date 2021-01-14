class TmartsController < ApplicationController
  before_action :set_tmart, only: [:show, :edit, :update, :destroy]
  def index
    @tmarts = Tmart.order("created_at DESC")
  end
  def new
    @tmart = Tmart.new
  end
  def create
    @tmart = Tmart.new(tmart_params)
    if @tmart.save
      redirect_to tmarts_path
    else
      render :new
    end
  end
  def show
  end
  def edit
    if @tmart.user_id != current_user.id
      redirect_to tmart_path
    end
  end
  def update
    if @tmart.update(item_params)
        redirect_to tmart_path(@tmart)
    else
        render :edit
    end
  end
  def destroy
    @tmart.destroy
    redirect_to tmarts_path
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