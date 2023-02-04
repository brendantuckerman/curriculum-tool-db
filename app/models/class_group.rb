class ClassGroup < ApplicationRecord

    belongs_to :users
    #has_many :tasks #done as a through association in user
    belongs_to :learning_areas
    

end