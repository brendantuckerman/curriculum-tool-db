class Student < ApplicationRecord

    has_many :class_groups
    has_many :tasks
    belongs_to :year

end