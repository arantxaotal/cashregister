class UsersController < ApplicationController
  def index
    if current_user
      @product = Product.new
      @product_baskets = ProductBasket.left_joins(:basket).where(baskets:{user_id: current_user.id})
      @basket = Basket.find_by_user_id(current_user.id)
    else
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      Basket.create(user_id: @user.id)
      redirect_to users_path
    else
      flash[:alert] = "Incorrect passwords"
      render 'user_sessions/new'
    end
  end

  def home

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
