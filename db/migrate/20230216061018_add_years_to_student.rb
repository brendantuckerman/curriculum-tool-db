class AddYearsToStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :year_id, :integer
  end
end
