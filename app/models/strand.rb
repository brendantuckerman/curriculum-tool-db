class Strand < ApplicationRecord

    has_many :content_descriptors
    has_many :substrands
    has_many :subthreads, through: :substrands

end