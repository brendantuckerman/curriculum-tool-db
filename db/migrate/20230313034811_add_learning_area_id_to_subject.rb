class AddLearningAreaIdToSubject < ActiveRecord::Migration[7.0]
  def change
    add_column :subjects, :learning_area_id, :integer
  end
end
