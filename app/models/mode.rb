class Mode < ApplicationRecord

    belongs_to :learning_area
    has_many :achievement_standards

end