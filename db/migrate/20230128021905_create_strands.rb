class CreateStrands < ActiveRecord::Migration[7.0]
  def change
    create_table :strands do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
