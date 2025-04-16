class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.text :description
      t.boolean :active, default: true
      t.boolean :featured, default: false
      
      t.timestamps
    end
    
    add_index :projects, :title
    add_index :projects, :active
    add_index :projects, :featured
  end
end
