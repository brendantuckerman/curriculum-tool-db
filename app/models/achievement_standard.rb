class AchievementStandard < ApplicationRecord

    belongs_to :years
    belongs_to :learning_areas, through: :years
    has_many :modes

end