class ToiletPlacesController < ApplicationController
  before_action :set_toilet_place, only: %i[edit update destroy]
  
  def new
    @toilet_place = ToiletPlace.new
  end
  
  def create
    @toilet_place = ToiletPlace.new(toilet_place_params)
    @toilet_place.user_id = current_user.id
    
    if @toilet_place.save!
      redirect_to root_path, notice: 'トイレの場所を登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end
  
  def update
    if @toilet_place.update(toilet_place_params)
      redirect_to root_path, notice: 'トイレの場所を更新しました'
    else
       render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @toilet_place.destroy!
    redirect_to root_path, notice: 'トイレの場所を削除しました'
  end
  
  private
  
  def set_toilet_place
    @toilet_place = ToiletPlace.find(params[:id])
  end
  
  def toilet_place_params
    params.require(:toilet_place).permit(:name, :address, :longitude, :latitude)
  end
end
