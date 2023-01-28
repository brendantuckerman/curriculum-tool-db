class CreateAchievementStandards < ActiveRecord::Migration[7.0]
  def change
    create_table :achievement_standards do |t|
      t.text :description
      t.text :knowledge
      t.text :skills
      t.text :understanding

      t.timestamps
    end
  end
end
