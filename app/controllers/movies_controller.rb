class MoviesController < ApplicationController
  before_action :set_movie, only: [:purchase]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
    if current_user.movie_users.size > 0
      @movies = @movies.where("id NOT IN (?)", MovieUser.where(user_id: current_user.id).pluck(:movie_id))
    end
    @movies = @movies.order(:created_at)
  end

  # GET /purchase
  def purchase
    MovieUser.create(user_id: current_user.id, movie_id: @movie.id, video_quality_id: params[:type])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :plot, :hd_price, :sd_price)
    end
end
