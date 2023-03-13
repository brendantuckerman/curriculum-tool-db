class AddYearToContentDescriptors < ActiveRecord::Migration[7.0]
  def change
    add_column :content_descriptors, :year_id, :integer
  end
end
