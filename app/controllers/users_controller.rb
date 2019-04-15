class UsersController < ApplicationController
  def index
    @users = User.search(params[:search])
    @search = params[:search]
  end
  def show
    @user = User.find_by_username(params[:id])
    @reviews = Review.where(user_id: @user.id).order("created_at DESC")
  end
end
