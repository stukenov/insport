# frozen_string_literal: true

require 'application_system_test_case'

class AboutpagesTest < ApplicationSystemTestCase
  test 'can see the about page' do
    visit pages_about_path

    assert_selector 'h1', text: 'About'
  end

  test 'can see the contact page' do
    visit pages_contact_path

    assert_selector 'h1', text: 'Contact'
  end
end
