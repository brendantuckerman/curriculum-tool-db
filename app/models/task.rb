class Task < ApplicationRecord

    has_many :students
    has_many :class_groups
    belongs_to :learning_areas

end