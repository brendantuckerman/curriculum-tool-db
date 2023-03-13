class Subject < ApplicationRecord

    belongs_to :learning_area
    has_many :content_descriptors

end