class AddSubjectToContentDescriptor < ActiveRecord::Migration[7.0]
  def change
    add_column :content_descriptors, :subject_id, :integer
  end
end
