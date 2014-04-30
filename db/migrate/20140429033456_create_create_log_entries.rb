class CreateCreateLogEntries < ActiveRecord::Migration
  def change
    create_table :create_log_entries do |t|
      t.string :name
      t.integer :rating
      t.string :location
      t.string :comments
      t.datetime :tested_on
      t.references :wines

      t.timestamps
    end
  end
end
