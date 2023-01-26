class CreateGeneralCapabilites < ActiveRecord::Migration[7.0]
  def change
    create_table :general_capabilites do |t|
      t.text :name

      t.timestamps
    end
  end
end
