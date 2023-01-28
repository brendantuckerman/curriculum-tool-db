class RenameThreadToSubthread < ActiveRecord::Migration[7.0]
  def change
    rename_table :threads, :subthreads
  end
end
