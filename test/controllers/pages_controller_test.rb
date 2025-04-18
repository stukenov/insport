# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get about' do
    get pages_about_path
    assert_response :success
  end

  test 'should get contact' do
    get pages_contact_path
    assert_response :success
  end
end
