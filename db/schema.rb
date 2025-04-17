# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 20_250_415_114_600) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'articles', force: :cascade do |t|
    t.string 'title', null: false
    t.text 'content'
    t.integer 'category', default: 0
    t.boolean 'published', default: false
    t.boolean 'featured', default: false
    t.datetime 'published_at'
    t.integer 'views_count', default: 0
    t.string 'image_url'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category'], name: 'index_articles_on_category'
    t.index ['featured'], name: 'index_articles_on_featured'
    t.index ['published'], name: 'index_articles_on_published'
    t.index ['published_at'], name: 'index_articles_on_published_at'
  end

  create_table 'epgs', force: :cascade do |t|
    t.bigint 'project_id'
    t.bigint 'episode_id'
    t.datetime 'start_time', null: false
    t.datetime 'end_time', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['end_time'], name: 'index_epgs_on_end_time'
    t.index ['episode_id'], name: 'index_epgs_on_episode_id'
    t.index ['project_id'], name: 'index_epgs_on_project_id'
    t.index ['start_time'], name: 'index_epgs_on_start_time'
  end

  create_table 'episodes', force: :cascade do |t|
    t.bigint 'project_id'
    t.string 'title', null: false
    t.text 'description'
    t.integer 'duration'
    t.string 'video_url'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['project_id'], name: 'index_episodes_on_project_id'
    t.index ['title'], name: 'index_episodes_on_title'
    t.index ['video_url'], name: 'index_episodes_on_video_url'
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'title', null: false
    t.text 'description'
    t.boolean 'active', default: true
    t.boolean 'featured', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['active'], name: 'index_projects_on_active'
    t.index ['featured'], name: 'index_projects_on_featured'
    t.index ['title'], name: 'index_projects_on_title'
  end

  add_foreign_key 'epgs', 'episodes'
  add_foreign_key 'epgs', 'projects'
  add_foreign_key 'episodes', 'projects'
end
