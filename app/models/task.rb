class Task < ApplicationRecord

    has_many :students
    has_many :class_groups
    has_many :learning_areas

end