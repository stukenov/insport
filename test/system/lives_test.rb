# frozen_string_literal: true

require 'application_system_test_case'

class LivesTest < ApplicationSystemTestCase
  test 'can see the live page' do
    visit live_path

    assert_selector 'h1', text: 'Live'
  end
end
