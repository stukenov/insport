# frozen_string_literal: true

require 'test_helper'

class NewsTest < ActiveSupport::TestCase
  test 'should create article' do
    article = Article.new(
      title: 'Test Article',
      content: 'This is a test article',
      category: 1,
      published: true,
      featured: false,
      published_at: Time.now,
      views_count: 0
    )

    puts article.errors.full_messages unless article.valid?
    assert article.valid?, article.errors.full_messages.join(', ')
  end
end
