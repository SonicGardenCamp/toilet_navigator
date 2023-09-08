class ReviewsController < ApplicationController
  before_action :set_review, only: %i[edit update destroy]
  
  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      redirect_to toilet_place_path(@review.toilet_place.id), notice: 'レビューを投稿しました'
    else
      redirect_to toilet_place_path(@review.toilet_place.id), alert: 'レビューを投稿に失敗しました。'
    end
  end
  
  def edit
  end
  
  def update
    if @review.update(review_params)
      redirect_to toilet_place_path(@review.toilet_place_id), notice: 'レビューを更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @review.destroy!
    redirect_to toilet_place_path(@review.toilet_place_id), notice: 'レビューを削除しました'
  end
  
  private
  
  def set_review
    @review = current_user.reviews.find(params[:id])
  end
  
  def review_params
    params.require(:review).permit(:content, :toilet_place_id)
  end
end
