class CreateYearDescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :year_descriptions do |t|
      t.text :description
      t.text :knowledge
      t.text :understanding
      t.text :skills
      t.text :notes

      t.timestamps
    end
  end
end
