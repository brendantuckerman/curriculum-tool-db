class CreateGeneralCapabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :general_capabilities do |t|
      t.references :GeneralCapability
      t.text :name
      t.timestamps
    end
  end
end
