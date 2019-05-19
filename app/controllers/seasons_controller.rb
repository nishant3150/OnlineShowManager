class SeasonsController < ApplicationController
  before_action :set_season, only: [:purchase]

  # GET /seasons
  def index
    @seasons = Season.all
    if current_user.season_users.size > 0
      @seasons = @seasons.where("seasons.id NOT IN (?)", SeasonUser.where(user_id: current_user.id).pluck(:season_id))
    end
    @seasons = @seasons.includes(:episodes).order("seasons.created_at, episodes.episode_number").references(:episodes)
  end

  # GET /seasons
  def purchase
    SeasonUser.create(user_id: current_user.id, season_id: @season.id, video_quality_id: params[:type])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season
      @season = Season.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def season_params
      params.require(:season).permit(:title, :plot, :hd_price, :sd_price)
    end
end