class Year < ApplicationRecord

    has_many :students
    has_many :learning_areas
    has_many :subjects, through: :learning_areas
    has_many :year_descriptions
    has_many :content_descriptors
    has_many :priorities, through: :content_descriptors
    has_many :capabilities, through: :content_descriptors
    has_many :achievement_standards



end
