class AddUserIdToClassGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :class_groups, :user_id, :integer
  end
end
