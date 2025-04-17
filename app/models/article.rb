# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, :content, :category, :published, :published_at, :views_count, presence: true
  validates :views_count, numericality: { greater_than_or_equal_to: 0 }
  validates :featured, inclusion: { in: [true, false] }

  enum category: {
    news: 0,
    article: 1,
    video: 2
  }
end
