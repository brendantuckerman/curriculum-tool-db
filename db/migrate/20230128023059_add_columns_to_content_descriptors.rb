class AddColumnsToContentDescriptors < ActiveRecord::Migration[7.0]
  def change
    add_column :content_descriptors, :knowledge, :text
    add_column :content_descriptors, :understanding, :text
    add_column :content_descriptors, :skills, :text
    add_column :content_descriptors, :notes, :text
  end
end
