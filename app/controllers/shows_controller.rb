class ShowsController < ApplicationController
    def index
        seasons = Season.all
        movies = Movie.all
        @shows = seasons + movies
        @shows.sort_by{|sh| sh.created_at}
    end
end
