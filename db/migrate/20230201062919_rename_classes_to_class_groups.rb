class RenameClassesToClassGroups < ActiveRecord::Migration[7.0]
  def change
    rename_table :classes, :class_groups
  end
end
