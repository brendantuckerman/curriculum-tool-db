class CreateLearningAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :learning_areas do |t|
      t.text :name

      t.timestamps
    end
  end
end
