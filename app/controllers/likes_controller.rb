class LikesController < ApplicationController
  def index
    @like = Like.all
  end

  def show
    p Like.find(params[:id])
    @like = Like.find(params[:id])
  end

  def new
    @users = User.all
    @likes = Like.all
    @like = Like.new
  end

  def create
    like_params = params.permit(:sender_user, :receiver_user, :match)
    @like = Like.create(like_params)

    if @like.save
      @likes = Like.all
      redirect_to likes_new_path
    else
      redirect_to likes_new_path
    end
  end

  def edit
    @like = Like.find(params[:id])
  end

  def update
    like_params = params.permit(:match)
    @like = Like.find(params[:id])
    if @like.update(like_params)
      if like_params[:match] == 'true'
        redirect_to new_matches_new_path
      else
        redirect_to likes_new_path
      end
    else
      redirect_to likes_new_path
    end
  end


  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to show_match_My_match_path
  end
end
