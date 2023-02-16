class AddLearningAreaToAchievmentStandard < ActiveRecord::Migration[7.0]
  def change
    add_column :achievement_standards, :learning_area_id, :integer
  end
end
