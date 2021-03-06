class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_city
  before_action :authenticate_user!

  # GET /reviews/new
  def new
    @review = Review.new
    @find = Review.where(city_id: @city.id, user_id: current_user.id).order("created_at DESC").first
  end

  # GET /reviews/1/edit
  def edit

  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.city_id = @city.id

    if @review.save
      redirect_to @city
    else
      render 'new'
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @city, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path, notice: 'Review was successfully deleted.') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    def set_city
      @city = City.find(params[:city_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:title, :rating, :comment, :image)
    end

    def show
      @reviews = Review.where(city_id: @city.id).order("created_at DESC")
      if @reviews.blank?
        @avg_review = 0
      else
        @avg_review = @reviews.average(:rating).round(2)
      end
    end
end
