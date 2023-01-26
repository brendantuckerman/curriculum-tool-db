class RemoveSubjectFromLearningAreas < ActiveRecord::Migration[7.0]
  def change
    change_table :learning_areas do |t| 
      t.remove :subject
    end
  end
end
