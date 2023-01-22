class CreateYears < ActiveRecord::Migration[7.0]
  def change
    create_table :years do |t|
      t.integer :year
      t.boolean :is_band
      t.integer :band_start
      t.integer :band_end

      t.timestamps
    end
  end
end
