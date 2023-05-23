class OutfitsController < ApplicationController
  before_action :set_outfit, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @outfits = policy_scope(Outfit)
  end

  def show
    @user = User.new
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    authorize @outfit
    if @outfit.save
      redirect_to outfit_path(@outfit)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    authorize @outfit
    if @outfit.update(outfit_params)
      redirect_to outfit_path(@outfit)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @outfit.destroy
    redirect_to outfits_path, status: :see_other
  end

  private

  def outfit_params
    params.require(:outfit).permit(:title, :category, :description, :size, :price_per_day, :photo)
  end

  def set_outfit
    @outfit = Outfit.find(params[:id])
    authorize @outfit
  end
end
