class AddLearningAreaToContentDescriptors < ActiveRecord::Migration[7.0]
  def change
    add_column :content_descriptors, :learning_area_id, :integer
  end
end
