class OutfitsController < ApplicationController
  before_action :set_outfit, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @outfits = Outfit.search_by_title_description_category(params[:query])
    else
      @outfits = Outfit.all
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    if @outfit.save
      redirect_to outfit_path(@outfit)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
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

  def owner
    @user = current_user
    @outfits = Outfit.all
  end

  private

  def outfit_params
    params.require(:outfit).permit(:title, :category, :description, :size, :price_per_day, :photo)
  end

  def set_outfit
    @outfit = Outfit.find(params[:id])
  end
end
