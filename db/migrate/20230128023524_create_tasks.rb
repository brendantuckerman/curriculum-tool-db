class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.text :name
      t.text :description
      t.text :notes
      t.integer :weighting
      t.text :type

      t.timestamps
    end
  end
end
