require 'application_system_test_case'

class ArticlesTest < ApplicationSystemTestCase
  test 'can see the articles page' do
    visit articles_path

    assert_selector 'h1', text: 'Articles'
  end

  test 'can see the article list' do
    visit articles_path

    assert_text articles(:one).title
    assert_text articles(:two).title
  end

  test 'can see the article show page' do
    visit article_path(articles(:one))

    assert_selector 'h1', text: articles(:one).title
  end
end
