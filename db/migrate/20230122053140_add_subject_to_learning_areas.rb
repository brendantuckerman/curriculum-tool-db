class AddSubjectToLearningAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :learning_areas, :subject, :text
  end
end
