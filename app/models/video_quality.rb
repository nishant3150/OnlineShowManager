class VideoQuality < ApplicationRecord
    HD = 1
    SD = 2

    has_many :movie_users
    has_many :seasons_users
end
