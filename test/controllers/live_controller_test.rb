# frozen_string_literal: true

require 'test_helper'

class LiveControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get live_path
    assert_response :success
  end
end
