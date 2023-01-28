class CreateSubstrands < ActiveRecord::Migration[7.0]
  def change
    create_table :substrands do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
