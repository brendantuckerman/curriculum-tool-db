class ContentDescriptor < ApplicationRecord

    has_many :priorities
    has_many :capabilities
    has_many :strands
    has_many :substrands, through: :strands
    has_many :subthreads, through: :substrands
    belongs_to :year
    belongs_to :learning_area

end