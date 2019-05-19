class Season < ApplicationRecord
    has_many :episodes
    has_many :season_users
    has_many :users, through: :season_users
end
