class CreateEpgs < ActiveRecord::Migration[7.1]
  def change
    create_table :epgs do |t|
      t.references :project, null: false, foreign_key: true
      t.references :episode, null: false, foreign_key: true
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      
      t.timestamps
    end
    
    add_index :epgs, :start_time
    add_index :epgs, :end_time
  end
end
