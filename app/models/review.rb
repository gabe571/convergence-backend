class Review < ApplicationRecord
    belongs_to :games
    belongs_to :user
end
