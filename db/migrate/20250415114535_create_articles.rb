# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :content
      t.integer :category, default: 0
      t.boolean :published, default: false
      t.boolean :featured, default: false
      t.datetime :published_at
      t.integer :views_count, default: 0
      t.string :image_url

      t.timestamps
    end

    add_index :articles, :category
    add_index :articles, :published
    add_index :articles, :featured
    add_index :articles, :published_at
  end
end
