# frozen_string_literal: true

require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get articles_path
    assert_response :success
  end

  test 'should get show' do
    get article_path(articles(:one))
    assert_response :success
  end
end
