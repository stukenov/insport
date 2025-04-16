class CreateEpisodes < ActiveRecord::Migration[7.1]
  def change
    create_table :episodes do |t|
      t.references :project, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.integer :duration # in minutes
      t.string :video_url
      
      t.timestamps
    end
    
    add_index :episodes, :title
    add_index :episodes, :video_url
  end
end
