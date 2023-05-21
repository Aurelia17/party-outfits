class OutfitsController < ApplicationController
  before_action :set_outfit, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @outfits = Outfit.all
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
    @outfit.save
    if @outfit.save
      redirect_to outfit_path(@outfit)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def outfit_params
    params.require(:outfit).permit(:title, :category, :description, :size, :price_per_day, :photo)
  end

  def set_outfit
    @outfit = Outfit.find(params[:id])
  end
end