class AddYearDescriptionToYears < ActiveRecord::Migration[7.0]
  def change
    add_column :year_descriptions, :year_id, :integer
  end
end
