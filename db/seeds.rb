require 'faker'

# create_table :articles do |t|
#     t.string :title, null: false
#     t.text :content
#     t.integer :category, default: 0
#     t.boolean :published, default: false
#     t.boolean :featured, default: false
#     t.datetime :published_at
#     t.integer :views_count, default: 0

puts 'Удаление всех статей'
Article.delete_all

puts 'Создание 50 статей'
ActiveRecord::Base.transaction do
  50.times do |_i|
    Article.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph,
      category: rand(0..2),
      published: true,
      featured: false,
      published_at: Faker::Time.between(from: 1.month.ago, to: Time.now),
      views_count: rand(100..1000),
      image_url: Faker::LoremFlickr.image(size: '600x400', search_terms: ['sports'])
    )
  end
end
puts "Создано #{Article.count} статей"
