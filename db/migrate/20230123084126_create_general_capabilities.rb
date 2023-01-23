class CreateGeneralCapabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :general_capabilities do |t|
      t.string :general_capabilities
      t.string :text

      t.timestamps
    end
  end
end
