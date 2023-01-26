class RemoveGeneralCapabilitiesAgain < ActiveRecord::Migration[7.0]
  def change
    drop_table :general_capabilities
  end
end
