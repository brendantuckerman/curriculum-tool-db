class RenameGeneralCapabilitesToGeneralCapabilities < ActiveRecord::Migration[7.0]
  def change
    rename_table :general_capabilites, :general_capabilities
  end
end
