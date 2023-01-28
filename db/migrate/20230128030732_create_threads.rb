class CreateThreads < ActiveRecord::Migration[7.0]
  def change
    create_table :threads do |t|
      t.text :name

      t.timestamps
    end
  end
end
