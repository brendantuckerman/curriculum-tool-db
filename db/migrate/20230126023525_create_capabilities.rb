class CreateCapabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :capabilities do |t|
      t.text :name
      t.timestamps
    end
  end
end
