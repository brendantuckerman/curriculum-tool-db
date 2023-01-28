class CreateContentDescriptors < ActiveRecord::Migration[7.0]
  def change
    create_table :content_descriptors do |t|
      t.string :title
      t.text :description
      t.string :code
      t.text :elaborations

      t.timestamps
    end
  end
end
