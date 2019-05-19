class SeasonUser < ApplicationRecord
    belongs_to :users
    belongs_to :seasons
end
