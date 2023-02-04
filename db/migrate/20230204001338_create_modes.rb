class CreateModes < ActiveRecord::Migration[7.0]
  def change
    create_table :modes do |t|
      t.text :name
      t.text :notes

      t.timestamps
    end
  end
end
