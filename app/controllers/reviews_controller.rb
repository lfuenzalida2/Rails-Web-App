# frozen_string_literal: true

class ReviewsController < ApplicationController
  def new
    @local = Local.find(params[:local_id])
    @review = Review.joins(:local).where('user_id' => current_user.id).where('id' => params[:date_id])
    @done = @review.length != 0
    p @review
  end

  def create
    review_params = params.permit(:local_id, :rating, :review)
    review_params['user_id'] = current_user.id
    @review = Review.create(review_params)
    if @review.save 
      redirect_to reviews_new_path(local_id: params[:local_id], date_id: params[:date_id]), notice: 'The review has been done succesfully'
    else
      redirect_to reviews_new_path(local_id: params[:local_id], date_id: params[:date_id]), notice: 'There has been an error on the submition'
    end
  end
end
