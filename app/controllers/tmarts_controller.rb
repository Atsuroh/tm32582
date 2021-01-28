class TmartsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_tmart, only: [:show, :edit, :update, :destroy]
  before_action :forbit_correct_user, only: [:edit, :update, :destroy]
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
  end
  def update
  end
  def destroy
  end
  private
  def tmart_params
    params.require(:tmart).permit(:image, :product_name, :hour_id,
                                  :text, :count, :category_id,
                                  :disposal_id, :store_id, :minute_id,
                                  :deadline, :before_price,
                                  :after_price).merge(user_id: current_user.id)
  end
  def set_tmart
    @tmart = Tmart.find(params[:id])
  end
  def forbit_correct_user
    if @tmart.user.id != current_user.id
      redirect_to root_path
    end
  end
end