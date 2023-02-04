class Strand < ApplicationRecord

    belongs_to :content_descriptors
    has_many :substrands
    has_many :subthreads, through: :substrands

end