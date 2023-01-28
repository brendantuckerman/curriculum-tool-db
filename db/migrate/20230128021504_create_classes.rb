class CreateClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :classes do |t|
      t.text :class_code
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
