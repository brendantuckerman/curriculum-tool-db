class AchievementStandard < ApplicationRecord

    belongs_to :year
    belongs_to :learning_area
    has_many :modes

end