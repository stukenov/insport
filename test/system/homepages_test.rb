require 'application_system_test_case'

class HomepagesTest < ApplicationSystemTestCase
  test 'can see the homepage' do
    visit root_path

    assert_selector 'h1', text: 'Homepage'
  end
end
