class AddLearningAreaToClassGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :class_groups, :learning_area_id, :integer
  end
end
