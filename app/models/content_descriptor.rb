class ContentDescriptor < ApplicationRecord

    has_many :priorities
    has_many :capabilities
    has_many :strands
    has_many :substrands, through: :strands
    has_many :subthreads, through: :substrands
    has_many :years
    belongs_to :learning_areas

end