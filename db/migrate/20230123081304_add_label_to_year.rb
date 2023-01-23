class AddLabelToYear < ActiveRecord::Migration[7.0]
  def change
    add_column :years, :label, :text
  end
end
