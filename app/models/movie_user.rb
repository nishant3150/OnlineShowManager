class MovieUser < ApplicationRecord
    belongs_to :users
    belongs_to :movies
    belongs_to :video_quality
end
