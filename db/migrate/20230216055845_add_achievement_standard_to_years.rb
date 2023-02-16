class AddAchievementStandardToYears < ActiveRecord::Migration[7.0]
  def change
    add_column :achievement_standards, :year_id, :integer
  end
end
